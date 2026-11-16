# NautaSdk — Guía para agentes

## Reglas del proyecto

1. Leer `MEMORY.md` antes de cualquier tarea.
2. Preguntar antes de: cambios arquitectónicos, nuevas dependencias, cambios de esquema/API pública, o cambios que afecten a más de un módulo.
3. Nunca ejecutar `git add` / `git commit` / `git push` sin aprobación explícita.
4. Mostrar siempre `git diff` antes de proponer un commit.
5. Si `MEMORY.md` contradice este archivo, prevalece `MEMORY.md`; avisar de la contradicción.
6. Una vez terminados los cambios preguntar si es necesario hacer `swift build` y luego `swift test`
7. Preguntar Es necesario lanzar el agente Planificator con su subagentes después de los cambios realizados?. Si yo respondo que sí entonces lo lanzas y si respondo que no entonces terminas.

## Agentes y SubAgentes
- **Planificador** (primary): crea planes, no edita ni ejecuta comandos.
- **Coordinador** (subagent): coordina todo lo realizado
- **Writer** (subagent): se encarga de escribir todo el código
- **Test** (subagent): se encarga de hacer los tests

Definiciones en `.opencode/agents/`.

## Contexto

- Swift Package Manager. El paquete se llama `EtecsaSdk`, pero los productos/módulos públicos son `NautaSdk` y `TiendaSdk`.
- Swift tools 6.2; plataformas iOS 15+ y macOS 11+. Sin dependencias externas.
- `NautaSdk` está implementado: `login`, `getCaptcha` y `users`. Los modelos de registro/reset existen, pero no hay métodos públicos para esas operaciones.
- `TiendaSdk` es un esqueleto: `Router.urlApi` está vacío y no hay endpoints implementados.
- La documentación puede estar desactualizada: `readme.md` y `Examples/` usan `captcha` y otro orden de parámetros, pero la API real es `getCaptcha` y `login(username:password:tipoCuenta:idRequest:captchatext:completion:)`. La fuente de verdad es `Sources/`.

## Estructura

- `Sources/NautaSdk/{core,routers,network,data}` — SDK de Nauta.
- `Sources/TiendaSdk/{core,routers,network,data}` — SDK de la tienda (incompleto).
- `Tests/NautaSdkTests`, `Tests/TiendaSdkTests` — tests XCTest.
- `Examples/` — ejemplos sueltos; **no** forman parte de ningún target, no se compilan ni se testean.
- `MEMORY.md`, `readme.md`, `docs/`, `contributing.md`, `license.md`.

## Comandos

```bash
swift build                      # compila ambos módulos
swift test                       # ejecuta todos los tests
swift test --filter 'NautaSdkTests/testLoginRequest'
swift build --target NautaSdk    # o --target TiendaSdk
```

- No hay CI ni linter configurado. `.zed/debug.json` activa formateo al guardar con 4 espacios.
- Baseline actual: `swift test` falla en `testLoginResponse` (`DecodingError`: no encuentra la clave `numero` en `...parametros.Número`). Es un fallo preexistente del fixture/modelo; no lo atribuyas a tus cambios.
- Los tests son offline: solo decodifican JSON de ejemplo. `testCaptcha` y `testDatos` están vacíos.

## Arquitectura y trampas

- `Sources/NautaSdk/core/nautaApi.swift`: fachada pública `NautaApi.shared`. Los métodos son `async` pero usan callbacks `(Result<T, NetWorkError>) -> Void`. Mantén ese patrón al añadir endpoints.
- `Sources/NautaSdk/routers/NautaRouter.swift`: enum que construye el `URLRequest`. La URL base es `https://wwww.nauta.cu:5002` (con cuatro `w`). No cambies URL, paths ni métodos HTTP sin preguntar.
- `Sources/NautaSdk/routers/perfomResponse.swift` (nombre con typo): define en realidad `Network.shared` y `sendResponse(router:type:completion:)`. La ubicación no coincide con el contenido.
- `Sources/NautaSdk/network/sesionDelegate.swift`: acepta el certificado del servidor y gestiona cookies/redirecciones; es necesario para las llamadas reales.
- Si la respuesta no es `HTTPURLResponse`, `Network.sendResponse` no llama al completion (falla silenciosa); tenlo en cuenta al depurar cuelgues.
- `NautaApi` envuelve cualquier fallo en `.jsonError(msg:)`, incluso errores HTTP. `NetWorkError` (NautaSdk) y `NetworkError` (TiendaSdk, otra `w`) son enums distintos; no los unifiques sin aprobación.
- Modelos en `Sources/NautaSdk/data/`: `Decodable` escritos a mano con `CodingKeys` que reproducen claves reales del JSON, incluidas tildes y espacios (`"Número"`, `"Recargar cualquier cuenta en Línea"`, etc.). No normalices esas claves ni cambies nombres de campos públicos.
- Cada archivo fuente lleva la cabecera MIT del proyecto; consérvala al editar o crear archivos.
- `NautaSdk` y `TiendaSdk` duplican red y modelos; no asumas que comparten código.
