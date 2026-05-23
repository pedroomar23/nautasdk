//
//  servicios.swift
//
//  Copyright (c) 2026 Pedro Omar 
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import Foundation

// MARK: - Servicios

public struct Servicios: Decodable, Hashable, Encodable, Sendable {
    public let servicios: ServicioDetalle

    enum CodingKeys: String, CodingKey {
        case servicios = "Servicios"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.servicios = try container.decode(ServicioDetalle.self, forKey: .servicios)
    }

    public init(servicios: ServicioDetalle) {
        self.servicios = servicios
    }
}

// MARK: - Servicios Detalle

public struct ServicioDetalle: Decodable, Hashable, Encodable, Sendable {
    public let navegacion: Navegacion

    enum CodingKeys: String, CodingKey {
        case navegacion = "navegacion"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.navegacion = try container.decode(Navegacion.self, forKey: .navegacion)
    }

    public init(navegacion: Navegacion) {
        self.navegacion = navegacion
    }
}

// MARK: - Navegacion 

public struct Navegacion: Decodable, Hashable, Encodable, Sendable {
    public let cuenta: Account 

    enum CodingKeys: String, CodingKey {
        case cuenta = "cuenta"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuenta = try container.decode(Account.self, forKey: .cuenta)
    }

    public init(cuenta: Account) {
        self.cuenta = cuenta
    }
}

// MARK: - Cuenta (@nauta.com.cu)

public struct Account: Decodable, Hashable, Encodable, Sendable {
    public let perfil: Perfils 

    enum CodingKeys: String, CodingKey {
        case perfil = "perfil"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.perfil = try container.decode(Perfils.self, forKey: .perfil)
    }

    public init(perfil: Perfils) {
        self.perfil = perfil
    }
}

// MARK: - Perfil

public struct Perfils: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: String 
    public let fechaVenta: String 
    public let estado: String 
    public let fechaBloqueo: String 
    public let fechaEliminacion: String 
    public let tipoAcceso: String 
    public let horasBonificacion: String 
    public let bonificacionDisfrutar: String 
    public let moneda: String 
    public let id: String 
    public let saldo: String 

    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta de acceso"
        case fechaVenta = "Fecha de venta"
        case estado = "Estado"
        case fechaBloqueo = "Fecha de bloqueo"
        case fechaEliminacion = "Fecha de eliminación"
        case tipoAcceso = "Tipo de acceso"
        case horasBonificacion = "Horas de bonificación"
        case bonificacionDisfrutar = "Bonificación por disfrutar"
        case moneda = "Moneda"
        case id = "id"
        case saldo = "Saldo"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(String.self, forKey: .cuentaAcceso)
        self.fechaVenta = try container.decode(String.self, forKey: .fechaVenta)
        self.estado = try container.decode(String.self, forKey: .estado)
        self.fechaBloqueo = try container.decode(String.self, forKey: .fechaBloqueo)
        self.fechaEliminacion = try container.decode(String.self, forKey: .fechaEliminacion)
        self.tipoAcceso = try container.decode(String.self, forKey: .tipoAcceso)
        self.horasBonificacion = try container.decode(String.self, forKey: .horasBonificacion)
        self.bonificacionDisfrutar = try container.decode(String.self, forKey: .bonificacionDisfrutar)
        self.moneda = try container.decode(String.self, forKey: .moneda)
        self.id = try container.decode(String.self, forKey: .id)
        self.saldo = try container.decode(String.self, forKey: .saldo)
    }

    public init(cuentaAcceso: String, fechaVenta: String, estado: String, fechaBloqueo: String, fechaEliminacion: String, tipoAcceso: String, horasBonificacion: String, bonificacionDisfrutar: String, moneda: String, id: String, saldo: String) {
        self.cuentaAcceso = cuentaAcceso
        self.fechaVenta = fechaVenta
        self.estado = estado
        self.fechaBloqueo = fechaBloqueo
        self.fechaEliminacion = fechaEliminacion
        self.tipoAcceso = tipoAcceso
        self.horasBonificacion = horasBonificacion
        self.bonificacionDisfrutar = bonificacionDisfrutar
        self.moneda = moneda
        self.id = id 
        self.saldo = saldo 
    }
}

// MARK: - Operaciones

public struct Operations: Decodable, Hashable, Encodable, Sendable {
    public let cambiarContraseńa: CambiarContraseña

    enum CodingKeys: String, CodingKey {
        case cambiarContraseńa = "cambiarContraseña"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cambiarContraseńa = try container.decode(CambiarContraseña.self, forKey: .cambiarContraseńa)
    }

    public init(cambiarContraseńa: CambiarContraseña) {
        self.cambiarContraseńa = cambiarContraseńa
    }
}

public struct CambiarContraseña: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: HParametros
    
    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alterarPerfilServicio = "alterarPerfilServicio"
        case parametros = "parametros"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alterarPerfilServicio = try container.decode(String.self, forKey: .alterarPerfilServicio)
        self.parametros = try container.decode(HParametros.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: HParametros) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alterarPerfilServicio = alterarPerfilServicio
        self.parametros = parametros
    }
}

public struct HParametros: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let contraseñaAnterior: CuentaAcceso
    public let contraseñaNueva: CuentaAcceso
    
    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta Acceso"
        case contraseñaAnterior = "Contraseña Anterior"
        case contraseñaNueva = "Contraseña Nueva"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.contraseñaAnterior = try container.decode(CuentaAcceso.self, forKey: .contraseñaAnterior)
        self.contraseñaNueva = try container.decode(CuentaAcceso.self, forKey: .contraseñaNueva)
    }
    
    public init(cuentaAcceso: CuentaAcceso, contraseñaAnterior: CuentaAcceso, contraseñaNueva: CuentaAcceso) {
        self.cuentaAcceso = cuentaAcceso
        self.contraseñaAnterior = contraseñaAnterior
        self.contraseñaNueva = contraseñaNueva
    }
}

public struct CuentaAcceso: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String
    public let parametro: String
    public let valor: String
    public let tipo: String
    public let orden: String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }
    
    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

public struct DesSesionNavegacion: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: KParametros
    
    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alterarPerfilServicio = "alterarPerfilServicio"
        case parametros = "parametros"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alterarPerfilServicio = try container.decode(String.self, forKey: .alterarPerfilServicio)
        self.parametros = try container.decode(KParametros.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: KParametros) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alterarPerfilServicio = alterarPerfilServicio
        self.parametros = parametros
    }
}

public struct KParametros: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let contraseña: CuentaAcceso
    
    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta de acceso"
        case contraseña = "Contraseña"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.contraseña = try container.decode(CuentaAcceso.self, forKey: .contraseña)
    }	
    
    public init(cuentaAcceso: CuentaAcceso, contraseña: CuentaAcceso) {
        self.cuentaAcceso = cuentaAcceso
        self.contraseña = contraseña
    }
}

// MARK: - Conexiones 

public struct Conexiones: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: HParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraperfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(HParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: HParameters) {
        self.operacion = operacion
        self.url = url 
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id 
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct HParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let mes: Mes
    public let pagina: Pagina
    public let elementosPage: ElementosPages

    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta de acceso"
        case mes = "Mes"
        case pagina = "pagina"
        case elementosPage = "Elementos por páginas"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.mes = try container.decode(Mes.self, forKey: .mes)
        self.pagina = try container.decode(Pagina.self, forKey: .pagina)
        self.elementosPage = try container.decode(ElementosPages.self, forKey: .elementosPage)
    }

    public init(cuentaAcceso: CuentaAcceso, mes: Mes, pagina: Pagina, elementosPage: ElementosPages) {
        self.cuentaAcceso = cuentaAcceso
        self.mes = mes
        self.pagina = pagina 
        self.elementosPage = elementosPage
    }
}

public struct Mes: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 
    public let valores: SValores

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
        case valores = "valores"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
        self.valores = try container.decode(SValores.self, forKey: .valores)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String, valores: SValores) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
        self.valores = valores
    }
}

public struct SValores: Decodable, Hashable, Encodable, Sendable {
    public let diez: String 
    public let once: String 
    public let doce: String 

    enum CodingKeys: String, CodingKey {
        case diez = "10"
        case once = "11"
        case doce = "12"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.diez = try container.decode(String.self, forKey: .diez)
        self.once = try container.decode(String.self, forKey: .once)
        self.doce = try container.decode(String.self, forKey: .doce)
    }

    public init(diez: String, once: String, doce: String) {
        self.diez = diez
        self.once = once
        self.doce = doce
    }
}

public struct Pagina: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

public struct ElementosPages: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

// MARK: - Recargas 

public struct Recargas: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: HParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(HParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: HParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

// MARK: - Tranferencias 

public struct Tranferencias: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: HParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(HParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: HParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

// MARK: - Recargar Cuenta en Línea 

public struct RecargaCuentaLinea: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: NParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(NParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: NParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct NParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let saldo: Saldo
    public let pasarela: Pasarela

    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta Acceso"
        case saldo = "saldo"
        case pasarela = "pasarela"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.saldo = try container.decode(Saldo.self, forKey: .saldo)
        self.pasarela = try container.decode(Pasarela.self, forKey: .pasarela)
    }

    public init(cuentaAcceso: CuentaAcceso, saldo: Saldo, pasarela: Pasarela) {
        self.cuentaAcceso = cuentaAcceso
        self.saldo = saldo
        self.pasarela = pasarela
    }
}

// MARK: - Recargar Cuenta con Cupón 

public struct RecargarCuentaCupon: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: LParameters 

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(LParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: LParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct LParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let pin: Pin 

    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta Acceso"
        case pin = "pin"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.pin = try container.decode(Pin.self, forKey: .pin)
    }

    public init(cuentaAcceso: CuentaAcceso, pin: Pin) {
        self.cuentaAcceso = cuentaAcceso
        self.pin = pin
    }
}

public struct Pin: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

// MARK: - Recuperar Contraseña 

public struct RecuperarContraseña: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: BParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(BParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: BParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo 
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo 
        self.modo = modo 
        self.id = id 
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct BParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaAcceso: CuentaAcceso
    public let cuentaChequeo: CuentaChequeo
    public let contraseña: Contraseña 

    enum CodingKeys: String, CodingKey {
        case cuentaAcceso = "Cuenta de acceso"
        case cuentaChequeo = "Cuenta de chequeo"
        case contraseña = "Contraseña"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaAcceso = try container.decode(CuentaAcceso.self, forKey: .cuentaAcceso)
        self.cuentaChequeo = try container.decode(CuentaChequeo.self, forKey: .cuentaChequeo)
        self.contraseña = try container.decode(Contraseña.self, forKey: .contraseña)
    }

    public init(cuentaAcceso: CuentaAcceso, cuentaChequeo: CuentaChequeo, contraseña: Contraseña) {
        self.cuentaAcceso = cuentaAcceso
        self.cuentaChequeo = cuentaChequeo
        self.contraseña = contraseña
    }
}

public struct CuentaChequeo: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

public struct Contraseña: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre 
        self.parametro = parametro
        self.valor = valor 
        self.tipo = tipo 
        self.orden = orden 
    }
}

// MARK: - Tranferir Saldo 

public struct TranferirSaldo: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String
    public let alteraPerfilServicio: String 
    public let parametros: MParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(MParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: MParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo 
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo 
        self.modo = modo 
        self.id = id 
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct MParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaOrigen: CuentaOrigen
    public let cuentaDestino: CuentaDestino
    public let contraseña: Contraseña
    public let saldo: Saldo 

    enum CodingKeys: String, CodingKey {
        case cuentaOrigen = "Cuenta de origen"
        case cuentaDestino = "Cuenta de destino"
        case contraseña = "Contraseña"
        case saldo = "Saldo"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaOrigen = try container.decode(CuentaOrigen.self, forKey: .cuentaOrigen)
        self.cuentaDestino = try container.decode(CuentaDestino.self, forKey: .cuentaDestino)
        self.contraseña = try container.decode(Contraseña.self, forKey: .contraseña)
        self.saldo = try container.decode(Saldo.self, forKey: .saldo) 
    }

    public init(cuentaOrigen: CuentaOrigen, cuentaDestino: CuentaDestino, contraseña: Contraseña, saldo: Saldo) {
        self.cuentaOrigen = cuentaOrigen
        self.cuentaDestino = cuentaDestino
        self.contraseña = contraseña
        self.saldo = saldo
    }
}

public struct CuentaOrigen: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre 
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

public struct CuentaDestino: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

// MARK: - Correo Nauta 

public struct CorreoNauta: Decodable, Hashable, Encodable, Sendable {
    public let correo: Correo 

    enum CodingKeys: String, CodingKey {
        case correo = "pedroomar.casabella@nauta.cu"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.correo = try container.decode(Correo.self, forKey: .correo)
    }

    public init(correo: Correo) {
        self.correo = correo 
    }
}

public struct Correo: Decodable, Hashable, Encodable, Sendable {
    public let perfil: SPerfil 
    public let tipoProducto: String 
    public let operaciones: SOperaciones

    enum CodingKeys: String, CodingKey {
        case perfil = "perfil"
        case tipoProducto = "CORREO"
        case operaciones = "operaciones"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.perfil = try container.decode(SPerfil.self, forKey: .perfil)
        self.tipoProducto = try container.decode(String.self, forKey: .perfil)
        self.operaciones = try container.decode(SOperaciones.self, forKey: .operaciones)
    }

    public init(perfil: SPerfil, tipoProducto: String, operaciones: SOperaciones) {
        self.perfil = perfil 
        self.tipoProducto = tipoProducto
        self.operaciones = operaciones
    }
}

public struct SPerfil: Decodable, Hashable, Encodable, Sendable {
    public let fechaVenta: String 
    public let cuentaCorreo: String 
    public let moneda: String 
    public let id: String 

    enum CodingKeys: String, CodingKey {
        case fechaVenta = "Fecha de venta"
        case cuentaCorreo = "Cuenta de correo"
        case moneda = "Moneda"
        case id = "id"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fechaVenta = try container.decode(String.self, forKey: .fechaVenta)
        self.cuentaCorreo = try container.decode(String.self, forKey: .cuentaCorreo)
        self.moneda = try container.decode(String.self, forKey: .moneda)
        self.id = try container.decode(String.self, forKey: .id)
    }

    public init(fechaVenta: String, cuentaCorreo: String, moneda: String, id: String) {
        self.fechaVenta = fechaVenta 
        self.cuentaCorreo = cuentaCorreo
        self.moneda = moneda 
        self.id = id 
    }
}

public struct SOperaciones: Decodable, Hashable, Encodable, Sendable {
    public let cambiarContraseña: SCambiarContraseña 
    public let recuperarContraseña: RecuperarContraseña

    enum CodingKeys: String, CodingKey {
        case cambiarContraseña = "Cambiar contraseña"
        case recuperarContraseña = "Recuperar contraseña"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cambiarContraseña = try container.decode(SCambiarContraseña.self, forKey: .cambiarContraseña)
        self.recuperarContraseña = try container.decode(RecuperarContraseña.self, forKey: .recuperarContraseña)
    }

    public init(cambiarContraseña: SCambiarContraseña, recuperarContraseña: RecuperarContraseña) {
        self.cambiarContraseña = cambiarContraseña
        self.recuperarContraseña = recuperarContraseña
    }
}

public struct SCambiarContraseña: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: KParameters

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(KParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: KParameters) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct KParameters: Decodable, Hashable, Encodable, Sendable {
    public let cuentaCorreo: CuentaCorreo 
    public let contraseñaAnterior: Contraseña
    public let contraseñaNueva: Contraseña

    enum CodingKeys: String, CodingKey {
        case cuentaCorreo = "Cuenta Correo"
        case contraseñaAnterior = "Contraseña Anterior"
        case contraseñaNueva = "Contraseña Nueva"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaCorreo = try container.decode(CuentaCorreo.self, forKey: .cuentaCorreo)
        self.contraseñaAnterior = try container.decode(Contraseña.self, forKey: .contraseñaAnterior)
        self.contraseñaNueva = try container.decode(Contraseña.self, forKey: .contraseñaNueva)
    }

    public init(cuentaCorreo: CuentaCorreo, contraseñaAnterior: Contraseña, contraseñaNueva: Contraseña) {
        self.cuentaCorreo = cuentaCorreo
        self.contraseñaAnterior = contraseñaAnterior
        self.contraseñaNueva = contraseñaNueva
    }
}

public struct CuentaCorreo: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String 
    public let parametro: String 
    public let valor: String 
    public let tipo: String 
    public let orden: String 

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }

    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

// MARK: - Recuperar Contraseña 

public struct RecuperarContraseñas: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alteraPerfilServicio: String 
    public let parametros: MParametros

    enum CodingKeys: String, CodingKey {
        case operacion = "operacion"
        case url = "url"
        case tipo = "tipo"
        case comercioElectronico = "comercioElectronico"
        case metodo = "metodo"
        case modo = "modo"
        case id = "id"
        case alteraPerfilServicio = "alteraPerfilServicio"
        case parametros = "parametros"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.url = try container.decode(String.self, forKey: .url)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.comercioElectronico = try container.decode(String.self, forKey: .comercioElectronico)
        self.metodo = try container.decode(String.self, forKey: .metodo)
        self.modo = try container.decode(String.self, forKey: .modo)
        self.id = try container.decode(String.self, forKey: .id)
        self.alteraPerfilServicio = try container.decode(String.self, forKey: .alteraPerfilServicio)
        self.parametros = try container.decode(MParametros.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alteraPerfilServicio: String, parametros: MParametros) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alteraPerfilServicio
        self.parametros = parametros
    }
}

public struct MParametros: Decodable, Hashable, Encodable, Sendable {
    public let cuentaCorreo: CuentaCorreo 
    public let cuentaChequeo: CuentaChequeo 
    public let contraseña: Contraseña 

    enum CodingKeys: String, CodingKey {
        case cuentaCorreo = "Cuenta de correo"
        case cuentaChequeo = "Cuenta de chequeo"
        case contraseña = "Contraseña"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cuentaCorreo = try container.decode(CuentaCorreo.self, forKey: .cuentaCorreo)
        self.cuentaChequeo = try container.decode(CuentaChequeo.self, forKey: .cuentaChequeo)
        self.contraseña = try container.decode(Contraseña.self, forKey: .contraseña)
    }

    public init(cuentaCorreo: CuentaCorreo, cuentaChequeo: CuentaChequeo, contraseña: Contraseña) {
        self.cuentaCorreo = cuentaCorreo
        self.cuentaChequeo = cuentaChequeo
        self.contraseña = contraseña
    }
}




