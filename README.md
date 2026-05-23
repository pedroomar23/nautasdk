<p align="center">
    <h1 align="center">
        EtecsaSdk
    </h>
</p>
<p align="center">
    <a href=""<img src="https://img.shields.io/badge/release 1.0.0-blue.svg" alt="release 1.0.0" /></a>
    <img src="https://img.shields.io/badge/Swift-6.3-orange.svg" alt="Swift 6.3" />
    <a href="https://web.todus.cu"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="[https://github.com/pedroomar23/nautasdk/blob/main/License.md](https://github.com/pedroomar23/nautasdk/blob/main/License.md)"><img src="https://img.shields.io/github/license/danielsaidi/SwiftUIKit" alt="MIT License" /></a>
</p>

## 📱 Descripción 
`NautaSdk` es una librería que accede a los sercicios del nuevo Portal [Nauta](https://nauta.cu) y la Tienda de [Etecsa](https://tienda.etecsa.cu).
## 👨‍💻 Instalación
```swift
dependencies: [
    .package(url: "https://github.com/pedroomar23/todus-sdk", from: "1.0.0")
]
```
## 🌐 Uso
### ✅ NautSdk
```swift
import NautaSdk

let nautaApi = NautaApi.shared

func login() async {
    await nautaApi.login(username: "username", password: "password", idRequest: "idRequest", captchatext: "captchatext", tipoCuenta: "tipoCuenta") { result in 
        switch result {
            case let .success(model):
                print("✅ DEBUG: LOGIN SUCCESS \(model)")
            case let .failure(error): 
                print("❌ DEBUG: LOGIN FAILURE \(error.localizedDescription)")
            }
        }
    }

func getCaptcha() async {
    await nautaApi.captcha { result in 
        switch result {
            case let .success(model):
                print("✅ DEBUG: LOGIN SUCCESS \(model)")
            case let .failure(error): 
                print("❌ DEBUG: LOGIN FAILURE \(error.localizedDescription)")
            }
        }
    }
```
### ✅ TiendaSdk
```swift
import TiendaSdk

let tiendaApi = TiendaApi.shared
```
## ❇️ Funciones 
### 👨‍💻 Portal Nauta
- [ ] Iniciar Sesión
- [ ] Registerse en el Portal
- [ ] Cambiar Contraseña
- [ ] Obtener Datos de Planes y Bonos ofertados por Etecsa
- [ ] Pagar Nauta Hogar mediante transferencias de Horas
- [ ] Otras funciones
### 👨‍💻 Tienda Etecsa 
- [ ] Iniciar Sesión en la Tienda
- [ ] Banner de Operaciones
- [ ] Comprar Paquetes y Planes
- [ ] Pagar Cuota de Deuda de Nauta Hogar
- [ ] Otras funciones 
## 🌐 Ejemplos
Para ver algunos ejemplos de como usar el sdk sigue los pasos en [Examples](https://github.com/pedroomar23/nautasdk/blob/main/Examples/examples.swift)
## 🔓 License 
`EtecsaSdk` está desarrollada bajo la [Licencia MIT](https://github.com/pedroomar23/nautasdk/blob/main/license.md)
