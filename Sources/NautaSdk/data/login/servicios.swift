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
}

// MARK: - Navegacion 

public struct Navegacion: Decodable, Hashable, Encodable, Sendable {
    public let cuenta: Account 
}

// MARK: - Cuenta (@nauta.com.cu)

public struct Account: Decodable, Hashable, Encodable, Sendable {
    public let perfil: Perfils 
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



