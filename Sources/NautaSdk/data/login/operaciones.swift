//
//  operaciones.swift
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

// MARK: - Operaciones

public struct Operaciones: Decodable, Hashable, Encodable, Sendable {
    public let recargarCuentaLinea: RecargarCuentaLinea
    public let pagarNautaHogarLinea: PagarNautaHogarLinea
    public let crearCuentaNavNacional: CuentaNavegaciónNacional
    public let operacionesRealizadas: OperacionesRealizadasPortal
    public let crearDemandaNautaHogar: CrearDemandaNautaHogar
    public let listaDemandasNautaHogar: ListaDemandasNautaHogar
    public let pagosElectronicosPortal: PagosElectronicosPortal
    public let crearCuentaCorreo: CrearCuentaCorreo
    public let recargarMovil: RecargarMovil

    enum CodingKeys: String, CodingKey {
        case recargarCuentaLinea = "Recargar cualquier cuenta en Línea"
        case pagarNautaHogarLinea = "Pagar cualquier Nauta Hogar en línea"
        case crearCuentaNavNacional = "Crear cuenta de navegación (@nauta.com.cu)"
        case operacionesRealizadas = "Operaciones realizadas en el portal"
        case crearDemandaNautaHogar = "Crear Demanda Nauta Hogar"
        case listaDemandasNautaHogar = "Listar Demandas Nauta Hogar"
        case pagosElectronicosPortal = "Pagos electrónicos en el portal"
        case crearCuentaCorreo = "Crear cuenta de correo (@nauta.cu)"
        case recargarMovil = "Recargar un móvil"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.recargarCuentaLinea = try container.decode(RecargarCuentaLinea.self, forKey: .recargarCuentaLinea)
        self.pagarNautaHogarLinea = try container.decode(PagarNautaHogarLinea.self, forKey: .pagarNautaHogarLinea)
        self.crearCuentaNavNacional = try container.decode(CuentaNavegaciónNacional.self, forKey: .crearCuentaNavNacional)
        self.operacionesRealizadas = try container.decode(OperacionesRealizadasPortal.self, forKey: .operacionesRealizadas)
        self.crearDemandaNautaHogar = try container.decode(CrearDemandaNautaHogar.self, forKey: .crearDemandaNautaHogar)
        self.listaDemandasNautaHogar = try container.decode(ListaDemandasNautaHogar.self, forKey: .listaDemandasNautaHogar)
        self.pagosElectronicosPortal = try container.decode(PagosElectronicosPortal.self, forKey: .pagosElectronicosPortal)
        self.crearCuentaCorreo = try container.decode(CrearCuentaCorreo.self, forKey: .crearCuentaCorreo)
        self.recargarMovil = try container.decode(RecargarMovil.self, forKey: .recargarMovil)
    }

    public init(recargarCuentaLinea: RecargarCuentaLinea, pagarNautaHogarLinea: PagarNautaHogarLinea, crearCuentaNavNacional: CuentaNavegaciónNacional, operacionesRealizadas: OperacionesRealizadasPortal, crearDemandaNautaHogar: CrearDemandaNautaHogar, listaDemandasNautaHogar: ListaDemandasNautaHogar, pagosElectronicosPortal: PagosElectronicosPortal, crearCuentaCorreo: CrearCuentaCorreo, recargarMovil: RecargarMovil) {
        self.recargarCuentaLinea = recargarCuentaLinea
        self.pagarNautaHogarLinea = pagarNautaHogarLinea
        self.crearCuentaNavNacional = crearCuentaNavNacional
        self.operacionesRealizadas = operacionesRealizadas
        self.crearDemandaNautaHogar = crearDemandaNautaHogar
        self.listaDemandasNautaHogar = listaDemandasNautaHogar
        self.pagosElectronicosPortal = pagosElectronicosPortal
        self.crearCuentaCorreo = crearCuentaCorreo
        self.recargarMovil = recargarMovil
    }
}

// MARK: - Recargar Cuenta en Línea

public struct RecargarCuentaLinea: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alteraPerfilServicio: String
    public let parametros: Parametros
    
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
        self.parametros = try container.decode(Parametros.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: Parametros) {
        self.operacion = operacion
        self.url = url
        self.tipo = tipo
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo
        self.id = id
        self.alteraPerfilServicio = alterarPerfilServicio
        self.parametros = parametros
    }
}

public struct Parametros: Decodable, Hashable, Encodable, Sendable {
    public let numero: Numero
    public let saldo: Numero
    public let cuentaAcceso: Numero
    public let pasarela: Pasarela
    
    enum CodingKeys: String, CodingKey {
        case numero = "Número"
        case saldo = "Saldo"
        case cuentaAcceso = "Cuenta de acceso"
        case pasarela = "Pasarela"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.numero = try container.decode(Numero.self, forKey: .numero)
        self.saldo = try container.decode(Numero.self, forKey: .saldo)
        self.cuentaAcceso = try container.decode(Numero.self, forKey: .cuentaAcceso)
        self.pasarela = try container.decode(Pasarela.self, forKey: .pasarela)
    }
    
    public init(numero: Numero, saldo: Numero, cuentaAcceso: Numero, pasarela: Pasarela) {
        self.numero = numero
        self.saldo = saldo
        self.cuentaAcceso = cuentaAcceso
        self.pasarela = pasarela
    }
}

public struct Numero: Decodable, Hashable, Encodable, Sendable {
    public let numero: String
    public let parametro: String
    public let valor: String
    public let tipo: String
    public let orden: String
    
    enum CodingKeys: String, CodingKey {
        case numero = "numero"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.numero = try container.decode(String.self, forKey: .numero)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
    }
    
    public init(numero: String, parametro: String, valor: String, tipo: String, orden: String) {
        self.numero = numero
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
    }
}

public struct Pasarela: Decodable, Hashable, Encodable, Sendable {
    public let numero: String
    public let parametro: String
    public let valor: String
    public let tipo: String
    public let orden: String
    public let valores: Valores
    
    enum CodingKeys: String, CodingKey {
        case numero = "numero"
        case parametro = "parametro"
        case valor = "valor"
        case tipo = "tipo"
        case orden = "orden"
        case valores = "valores"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.numero = try container.decode(String.self, forKey: .numero)
        self.parametro = try container.decode(String.self, forKey: .parametro)
        self.valor = try container.decode(String.self, forKey: .valor)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.orden = try container.decode(String.self, forKey: .orden)
        self.valores = try container.decode(Valores.self, forKey: .valores)
    }
    
    public init(numero: String, parametro: String, valor: String, tipo: String, orden: String, valores: Valores) {
        self.numero = numero
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
        self.valores = valores
    }
}

public struct Valores: Decodable, Hashable, Encodable, Sendable {
    public let transfermovil: String
    
    enum CodingKeys: String, CodingKey {
        case transfermovil = "Transfermóvil"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.transfermovil = try container.decode(String.self, forKey: .transfermovil)
    }
    
    public init(transfermovil: String) {
        self.transfermovil = transfermovil
    }
}

// MARK: - Pagar Nauta Hogar en Línea

public struct PagarNautaHogarLinea: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: Parametros
    
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
        self.parametros = try container.decode(Parametros.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: Parametros) {
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

// MARK: - Crear Cuenta de Navegación (@nauta.com.cu)

public struct CuentaNavegaciónNacional: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: Parameters
    
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
        self.parametros = try container.decode(Parameters.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: Parameters) {
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

public struct Parameters: Decodable, Hashable, Encodable, Sendable {
    public let tipoServicio: TipoServicio
    public let cuentaNav: TipoServicio
    public let contraseña: TipoServicio
    public let cliente: TipoServicio
    
    enum CodingKeys: String, CodingKey {
        case tipoServicio = "Tipo de servicio"
        case cuentaNav = "Cuenta de navegación"
        case contraseña = "Contraseña"
        case cliente = "Cliente"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tipoServicio = try container.decode(TipoServicio.self, forKey: .tipoServicio)
        self.cuentaNav = try container.decode(TipoServicio.self, forKey: .cuentaNav)
        self.contraseña = try container.decode(TipoServicio.self, forKey: .contraseña)
        self.cliente = try container.decode(TipoServicio.self, forKey: .cliente)
    }
    
    public init(tipoServicio: TipoServicio, cuentaNav: TipoServicio, contraseña: TipoServicio, cliente: TipoServicio) {
        self.tipoServicio = tipoServicio
        self.cuentaNav = cuentaNav
        self.contraseña = contraseña
        self.cliente = cliente
    }
}

public struct TipoServicio: Decodable, Hashable, Encodable, Sendable {
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

// MARK: - Operaciones Realizadas

public struct OperacionesRealizadasPortal: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: NewParameters
    
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
        self.parametros = try container.decode(NewParameters.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: NewParameters) {
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

public struct NewParameters: Decodable, Hashable, Encodable, Sendable {
    public let clientId: ClientId
    public let fecha: ClientId
    public let pagina: ClientId
    public let elementPaginas: ClientId
    
    enum CodingKeys: String, CodingKey {
        case clientId = "Cliente Id"
        case fecha = "Fecha"
        case pagina = "pagina"
        case elementPaginas = "Elementos por páginas"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clientId = try container.decode(ClientId.self, forKey: .clientId)
        self.fecha = try container.decode(ClientId.self, forKey: .fecha)
        self.pagina = try container.decode(ClientId.self, forKey: .pagina)
        self.elementPaginas = try container.decode(ClientId.self, forKey: .elementPaginas)
    }
    
    public init(clientId: ClientId, fecha: ClientId, pagina: ClientId, elementPaginas: ClientId) {
        self.clientId = clientId
        self.fecha = fecha
        self.pagina = pagina
        self.elementPaginas = elementPaginas
    }
}

public struct ClientId: Decodable, Hashable, Encodable, Sendable {
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

// MARK: - Crear Demanda Nauta Hogar

public struct CrearDemandaNautaHogar: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String
    public let url: String
    public let tipo: String
    public let comercioElectronico: String
    public let metodo: String
    public let modo: String
    public let id: String
    public let alterarPerfilServicio: String
    public let parametros: NParametros
    
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
        self.parametros = try container.decode(NParametros.self, forKey: .parametros)
    }
    
    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: NParametros) {
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

public struct NParametros: Decodable, Hashable, Encodable, Sendable {
    public let telefonoServicio: ClientId
    public let telefonoContacto: ClientId
    public let cliente: ClientId
    public let direccion: ClientId
    public let correoContacto: ClientId
    public let oferta: Oferta
    
    enum CodingKeys: String, CodingKey {
        case telefonoServicio = "Télefono de sercicio"
        case telefonoContacto = "Télefono de contacto"
        case cliente = "Cliente"
        case direccion = "Dirección"
        case correoContacto = "Correo de contacto"
        case oferta = "Oferta"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.telefonoServicio = try container.decode(ClientId.self, forKey: .telefonoServicio)
        self.telefonoContacto = try container.decode(ClientId.self, forKey: .telefonoContacto)
        self.cliente = try container.decode(ClientId.self, forKey: .cliente)
        self.direccion = try container.decode(ClientId.self, forKey: .direccion)
        self.correoContacto = try container.decode(ClientId.self, forKey: .correoContacto)
        self.oferta = try container.decode(Oferta.self, forKey: .oferta)
    }
    
    public init(telefonoServicio: ClientId, telefonoContacto: ClientId, cliente: ClientId, direccion: ClientId, correoContacto: ClientId, oferta: Oferta) {
        self.telefonoServicio = telefonoServicio
        self.telefonoContacto = telefonoContacto
        self.cliente = cliente
        self.direccion = direccion
        self.correoContacto = correoContacto
        self.oferta = oferta
    }
}

public struct Oferta: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String
    public let parametro: String
    public let valor: String
    public let tipo: String
    public let orden: String
    public let valores: NValores
    
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
        self.valores = try container.decode(NValores.self, forKey: .valores)
    }
    
    public init(nombre: String, parametro: String, valor: String, tipo: String, orden: String, valores: NValores) {
        self.nombre = nombre
        self.parametro = parametro
        self.valor = valor
        self.tipo = tipo
        self.orden = orden
        self.valores = valores
    }
}

public struct NValores: Decodable, Hashable, Encodable, Sendable {
    public let um30Horas: TipoOferta
    public let um40Horas: TipoOferta
    public let um60Horas: TipoOferta
    public let um36Horas: TipoOferta
    public let um120Horas: TipoOferta
    
    enum CodingKeys: String, CodingKey {
        case um30Horas = "um-32-0917-20-horas"
        case um40Horas = "um-32-0917-2020"
        case um60Horas = "um-108-60-33-0917-residencial"
        case um36Horas = "um-108-60-20-residencial"
        case um120Horas = "um-19-120"
    }
}

public struct TipoOferta: Decodable, Hashable, Encodable, Sendable {
    public let ofertaid: String
    public let nombre: String
    public let precio: Int
    public let moneda: String
    public let info: String
    
    enum CodingKeys: String, CodingKey {
        case ofertaid = "ofertaid"
        case nombre = "nombre"
        case precio = "precio"
        case moneda = "moneda"
        case info = "info"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ofertaid = try container.decode(String.self, forKey: .ofertaid)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.precio = try container.decode(Int.self, forKey: .precio)
        self.moneda = try container.decode(String.self, forKey: .moneda)
        self.info = try container.decode(String.self, forKey: .info)
    }
    
    public init(ofertaid: String, nombre: String, precio: Int, moneda: String, info: String) {
        self.ofertaid = ofertaid
        self.nombre = nombre
        self.precio = precio
        self.moneda = moneda
        self.info = info
    }
}

// MARK: - Lista Demandas Nauta Hogar

public struct ListaDemandasNautaHogar: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alterarPerfilServicio: String 
    public let parametros: SParametros

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
        self.parametros = try container.decode(SParametros.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: SParametros) {
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

public struct SParametros: Decodable, Hashable, Encodable, Sendable {
    public let cliente: ClientId

    enum CodingKeys: String, CodingKey {
        case cliente = "Cliente"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cliente = try container.decode(ClientId.self, forKey: .cliente)
    }

    public init(cliente: ClientId) {
        self.cliente = cliente
    }
}

// MARK: - Pagos Electrónicos en el Portal 

public struct PagosElectronicosPortal: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alterarPerfilServicio: String 
    public let parametros: NewParameters

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
        self.parametros = try container.decode(NewParameters.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: NewParameters) {
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

// MARK: - Crear Cuenta de correo (@nauta.cu)

public struct CrearCuentaCorreo: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alterarPerfilServicio: String 
    public let parametros: VParametros

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
        self.parametros = try container.decode(VParametros.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarPerfilServicio: String, parametros: VParametros) {
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

public struct VParametros: Decodable, Hashable, Encodable, Sendable {
    public let tipoServicio: TipoServicio
    public let cuentaCorreo: TipoServicio
    public let contraseña: TipoServicio
    public let cliente: TipoServicio

    enum CodingKeys: String, CodingKey {
        case tipoServicio = "Tipo de servicio"
        case cuentaCorreo = "Cuenta de correo"
        case contraseña = "Contraseña"
        case cliente = "Cliente"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tipoServicio = try container.decode(TipoServicio.self, forKey: .tipoServicio)
        self.cuentaCorreo = try container.decode(TipoServicio.self, forKey: .cuentaCorreo)
        self.contraseña = try container.decode(TipoServicio.self, forKey: .contraseña)
        self.cliente = try container.decode(TipoServicio.self, forKey: .cliente)
    }

    public init(tipoServicio: TipoServicio, cuentaCorreo: TipoServicio, contraseña: TipoServicio, cliente: TipoServicio) {
        self.tipoServicio = tipoServicio
        self.cuentaCorreo = cuentaCorreo
        self.contraseña = contraseña
        self.cliente = cliente
    }
}

// MARK: - Recargar Móvil 

public struct RecargarMovil: Decodable, Hashable, Encodable, Sendable {
    public let operacion: String 
    public let url: String 
    public let tipo: String 
    public let comercioElectronico: String 
    public let metodo: String 
    public let modo: String 
    public let id: String 
    public let alterarPerfilServicio: String 
    public let parametros: TParametros

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
        self.parametros = try container.decode(TParametros.self, forKey: .parametros)
    }

    public init(operacion: String, url: String, tipo: String, comercioElectronico: String, metodo: String, modo: String, id: String, alterarperfilServicio: String, parametros: TParametros) {
        self.operacion = operacion
        self.url = url 
        self.tipo = tipo 
        self.comercioElectronico = comercioElectronico
        self.metodo = metodo
        self.modo = modo 
        self.id = id 
        self.alterarPerfilServicio = alterarperfilServicio
        self.parametros = parametros
    }
}

public struct TParametros: Decodable, Hashable, Encodable, Sendable {
    public let saldo: Saldo

    enum CodingKeys: String, CodingKey {
        case saldo = "Saldo"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.saldo = try container.decode(Saldo.self, forKey: .saldo)
    }

    public init(saldo: Saldo) {
        self.saldo = saldo
    }
}

public struct Saldo: Decodable, Hashable, Encodable, Sendable {
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




