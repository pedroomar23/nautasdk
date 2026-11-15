# MEMORY Project 

## Estructura 
- `/Sources` - Código Fuente de a librería.
- `/Tests` - Tests Unitarios realizados.
- `AGENTS.md` - Todo sobre los agentes usados.
-  `MEMORY.md` - Memoria del Proyecto
-  `README.md` - Todo sobre el Proyecto 
-  `LICENSE.md` - Licencia utilizada.

## Stack 
- `Swift 6.2` - Código Fuente 
- `URLSession` - Llamadas a HTTP

## Estado 
- Versión: 1.0.0
- Fase: Pública
- CI: rama `main`

## Decisiones
- Sin dependecias externas en `/Sources` para evitar peso.
- Se añadió un Planificador, Coordinador, Writer y Test para una mejor experiencia. Todo esta en `AGENTS.md`.
- Tanto en `/Sources/NautaSdk` como en `/Sources/TiendaSdk` se decidió que no se incluiría un ViewModel.
- Aplicar simepre las concurrencias `async/await` para una mejor experiencia.


