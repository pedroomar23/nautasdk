//
//  NautaSdkTests.swift
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

import XCTest
@testable import NautaSdk

final class NautaSdkTests: XCTestCase {
    
    // MARK: - Captcha
    
    func testCaptcha() async throws {
        
    }
    
    // MARK: - Test Login Request
    
    func testLoginRequest() async throws {
        let jsonString = """
            { 
                "username": "usuario", 
                "password": "Carlos*1998", 
                "tipoCuenta": "USUARIO_PORTAL", 
                "idRequest": "914376bba2444751e198170bf4e862336c8b7e83", 
                "captchatext": "NUTDR9" 
            } 
        """
        let decoder = JSONDecoder()
        let jsonData = jsonString.data(using: .utf8)!
        let loginRequest = try decoder.decode(LoginRequest.self, from: jsonData)
        print("✅ DEBUG: JSON RESPONSE \(loginRequest)")
        
        XCTAssertEqual(loginRequest.username, "usuario")
        XCTAssertEqual(loginRequest.password, "Carlos*1998")
        XCTAssertEqual(loginRequest.tipoCuenta, "USUARIO_PORTAL")
        XCTAssertEqual(loginRequest.idRequest, "914376bba2444751e198170bf4e862336c8b7e83")
        XCTAssertEqual(loginRequest.captchatext, "NUTDR9")
    }
    
    // MARK: - Test Login Response
    
    func testLoginResponse() async throws {
        let jsonString = """
            {
                            "resp":{
                                "user":{
                                    "cliente":{
                                        "nombre":"pedro omar casabella lemus",
                                        "telefono":"55627579",
                                        "email":"pocl9812@gmail.com",
                                        "notificaciones_mail":"false",
                                        "notificaciones_movil":"true",
                                        "usuario_portal":"+5355627579",
                                        "operaciones":{
                                            "Recargar cualquier cuenta en Línea":{
                                                "operacion":"Recargar cualquier cuenta en Línea",
                                                "url":"recargaOtraCuentaOnline",
                                                "tipo":"RECARGA",
                                                "comercioElectronico":"true",
                                                "metodo":"POST",
                                                "modo":"ASINCRONICO",
                                                "id":"recharge_online_any_account",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Número":{
                                                        "nombre":"Número",
                                                        "parametro":"numero",
                                                        "valor":"",
                                                        "tipo":"STRING",
                                                        "orden":"1"
                                                    },
                                                    "Saldo":{
                                                        "nombre":"Saldo",
                                                        "parametro":"monto",
                                                        "valor":"",
                                                        "tipo":"MONEY",
                                                        "orden":"2"
                                                    },
                                                    "Cuenta de acceso":{
                                                        "nombre":"Cuenta de acceso",
                                                        "parametro":"accessLogin",
                                                        "valor":"","tipo":"STRING",
                                                        "orden":"1"
                                                    },
                                                    "Pasarela":{
                                                        "nombre":"Pasarela",
                                                        "parametro":"pasarela",
                                                        "valor":"",
                                                        "tipo":"SELECT",
                                                        "orden":"3",
                                                        "valores":{
                                                            "TRANSFERMOVIL":"Transfermóvil"
                                                        }
                                            }}},
                                            "Pagar cualquier Nauta Hogar en línea":{
                                                "operacion":"Pagar cualquier Nauta Hogar en línea",
                                                "url":"pagoOnlineCMNH",
                                                "tipo":"RECARGA",
                                                "comercioElectronico":"true",
                                                "metodo":"POST","modo":"ASINCRONICO",
                                                "id":"pagar_cm_online_otra_cuenta",
                                                "alteraPerfilServicio":"SIMPLE",
                                                "parametros":{
                                                    "Saldo":{
                                                        "nombre":"Saldo",
                                                        "parametro":"monto",
                                                        "valor":"",
                                                        "tipo":"MONEY",
                                                        "orden":"2"
                                                    },
                                                    "Cuenta de acceso":{
                                                        "nombre":"Cuenta de acceso",
                                                        "parametro":"cuentaAcceso",
                                                        "valor":"",
                                                        "tipo":"CUENTA_ACCESO",
                                                        "orden":"1"
                                                    },
                                                    "Pasarela":{
                                                        "nombre":"Pasarela",
                                                        "parametro":"pasarela",
                                                        "valor":"",
                                                        "tipo":"SELECT",
                                                        "orden":"3",
                                                        "valores":{
                                                            "TRANSFERMOVIL":"Transfermóvil"
                                                        }}}},
                                            "Crear cuenta de navegación (@nauta.com.cu)":{
                                                "operacion":"Crear cuenta de navegación (@nauta.com.cu)",
                                                "url":"crearCuentaAcceso",
                                                "tipo":"ALTA",
                                                "comercioElectronico":"false",
                                                "metodo":"POST",
                                                "modo":"ASINCRONICO",
                                                "id":"create_cta_permanente",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Tipo de servicio":{
                                                        "nombre":"Tipo de servicio",
                                                        "parametro":"especificacionProductoId",
                                                        "valor":"100",
                                                        "tipo":"STRING",
                                                        "orden":"4"
                                                    },
                                                    "Cuenta de navegación":{
                                                        "nombre":"Cuenta de navegación",
                                                        "parametro":"cuenta",
                                                        "valor":"",
                                                        "tipo":"CUENTA_ACCESO",
                                                        "orden":"1"
                                                    },
                                                    "Contraseña":{
                                                        "nombre":"Contraseña",
                                                        "parametro":"password",
                                                        "valor":"",
                                                        "tipo":"NEWPASSWORD",
                                                        "orden":"2"
                                                    },
                                                    "Cliente":{
                                                        "nombre":"Cliente",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING",
                                                        "orden":"3"
                                                    }}},
                                            "Operaciones realizadas en el portal":{
                                                "operacion":"Operaciones realizadas en el portal",
                                                "url":"queryOperations",
                                                "tipo":"CONSULTA",
                                                "comercioElectronico":"false",
                                                "metodo":"GET",
                                                "modo":"ASINCRONICO",
                                                "id":"query_operations",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Cliente Id":{
                                                        "nombre":"Cliente Id",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING",
                                                        "orden":"1"
                                                    },
                                                    "Fecha":{
                                                        "nombre":"Fecha",
                                                        "parametro":"fecha",
                                                        "valor":"",
                                                        "tipo":"DATETIME",
                                                        "orden":"2"
                                                    },
                                                    "pagina":{
                                                        "nombre":"pagina",
                                                        "parametro":"pagina",
                                                        "valor":"0",
                                                        "tipo":"NUMERIC",
                                                        "orden":"3"
                                                    },
                                                    "Elementos por páginas":{
                                                        "nombre":"Elementos por páginas",
                                                        "parametro":"itemsPorPagina",
                                                        "valor":"0",
                                                        "tipo":"NUMERIC",
                                                        "orden":"4"
                                                    }}},
                                            "Crear Demanda Nauta Hogar":{
                                                "operacion":"Crear Demanda Nauta Hogar",
                                                "url":"demandarServicioNautaHogar",
                                                "tipo":"MODIFICACION",
                                                "comercioElectronico":"false",
                                                "metodo":"POST",
                                                "modo":"SINCRONICO",
                                                "id":"demandar_nh",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Teléfono de servicio":{
                                                        "nombre":"Teléfono de servicio",
                                                        "parametro":"telefonoServicio",
                                                        "valor":"",
                                                        "tipo":"TELEFONO_FIJO",
                                                        "orden":"2"
                                                    },
                                                    "Teléfono de contacto":{
                                                        "nombre":"Teléfono de contacto",
                                                        "parametro":"telefonoContacto",
                                                        "valor":"",
                                                        "tipo":"STRING",
                                                        "orden":"4"
                                                    },
                                                    "Cliente":{
                                                        "nombre":"Cliente",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING",
                                                        "orden":"1"
                                                    },
                                                    "Dirección":{
                                                        "nombre":"Dirección",
                                                        "parametro":"direccion",
                                                        "valor":"",
                                                        "tipo":"STRING",
                                                        "orden":"3"},
                                                    "Correo de contacto":{
                                                        "nombre":"Correo de contacto",
                                                        "parametro":"correoContacto",
                                                        "valor":"",
                                                        "tipo":"STRING",
                                                        "orden":"5"
                                                    },
                                                    "Oferta":{
                                                        "nombre":"Oferta",
                                                        "parametro":"ofertaId",
                                                        "valor":"",
                                                        "tipo":"SELECT_PKG",
                                                        "orden":"6",
                                                        "valores":{
                                                            "um-32-0917-20-horas":{
                                                                "ofertaId":"um-32-0917-20-horas",
                                                                "nombre":"1 MB - 30 Hrs.",
                                                                "precio":25000,
                                                                "moneda":"CUP",
                                                                "info":"1 MB x 512 KB 30 Horas"
                                                            }
                                                            ,"um-32-0917-2020":{
                                                                "ofertaId":"um-32-0917-2020",
                                                                "nombre":"1 MB - 40 Hrs.",
                                                                "precio":30000,
                                                                "moneda":"CUP",
                                                                "info":"1 MB x 512 KB 40 Horas"
                                                            },
                                                            "um-108-60-33-0917-residencial":{
                                                                "ofertaId":"um-108-60-33-0917-residencial",
                                                                "nombre":"2 MB - 60 Hrs.",
                                                                "precio":50000,
                                                                "moneda":"CUP",
                                                                "info":"2 MB x 512 KB 60 Horas"
                                                            },
                                                            "um-108-60-20-residencial":{
                                                                "ofertaId":"um-108-60-20-residencial",
                                                                "nombre":"3 MB - 60 Hrs.",
                                                                "precio":87500,
                                                                "moneda":"CUP",
                                                                "info":"3 MB x 1 MB 60 Horas"
                                                            }
                                                            ,"um-19-120":{
                                                                "ofertaId":"um-19-120",
                                                                "nombre":"4 MB - 120 Hrs.",
                                                                "precio":137500,
                                                                "moneda":"CUP",
                                                                "info":"4 MB x 1 MB 120 Horas"
                                                            }}}}},
                                            "Listar Demandas Nauta Hogar":{
                                                "operacion": "Listar Demandas Nauta Hogar",
                                                "url":"consultarDemandaServicioNautaHogar",
                                                "tipo":"CONSULTA",
                                                "comercioElectronico":"false",
                                                "metodo":"GEST",
                                                "modo":"SINCRONICO",
                                                "id":"listardemanda_nh",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Cliente":{
                                                        "nombre":"Cliente",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING",
                                                        "orden":"1"
                                                    }}},
                                            "Pagos electrónicos en el portal":{
                                                "operacion":"Pagos electrónicos en el portal",
                                                "url":"queryPagosOnLine",
                                                "tipo":"CONSULTA",
                                                "comercioElectronico":"false",
                                                "metodo":"GET",
                                                "modo":"ASINCRONICO",
                                                "id":"query_pago_operaciones",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Cliente Id":{
                                                        "nombre":"Cliente Id",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING","orden":"1"
                                                    },
                                                    "Fecha":{
                                                        "nombre":"Fecha",
                                                        "parametro":"fecha",
                                                        "valor":"",
                                                        "tipo":"DATETIME",
                                                        "orden":"2"
                                                    },
                                                    "pagina":{
                                                        "nombre":"pagina",
                                                        "parametro":"pagina",
                                                        "valor":"0",
                                                        "tipo":"NUMERIC",
                                                        "orden":"3"
                                                    },
                                                    "Elementos por páginas":{
                                                        "nombre":"Elementos por páginas",
                                                        "parametro":"itemsPorPagina",
                                                        "valor":"0",
                                                        "tipo":"NUMERIC",
                                                        "orden":"4"
                                                    }}},
                                            "Crear cuenta de correo (@nauta.cu)":{
                                                "operacion":"Crear cuenta de correo (@nauta.cu)",
                                                "url":"crearCuentaCorreo",
                                                "tipo":"ALTA",
                                                "comercioElectronico":"false",
                                                "metodo":"POST",
                                                "modo":"ASINCRONICO",
                                                "id":"create_email",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Tipo de servicio":{
                                                        "nombre":"Tipo de servicio",
                                                        "parametro":"especificacionProductoId",
                                                        "valor":"correo",
                                                        "tipo":"STRING",
                                                        "orden":"4"
                                                    },
                                                    "Cuenta de correo":{
                                                        "nombre":"Cuenta de correo",
                                                        "parametro":"cuenta",
                                                        "valor":"",
                                                        "tipo":"STRING",
                                                        "orden":"1"
                                                    },
                                                    "Contraseña":{
                                                        "nombre":"Contraseña",
                                                        "parametro":"password",
                                                        "valor":"",
                                                        "tipo":"NEWPASSWORD",
                                                        "orden":"2"
                                                    },
                                                    "Cliente":{
                                                        "nombre":"Cliente",
                                                        "parametro":"clienteId",
                                                        "valor":"1ea1c323-a233-4a5f-a6b0-57597eb711eb",
                                                        "tipo":"STRING",
                                                        "orden":"3"
                                                    }}},
                                            "Recargar un móvil":{
                                                "operacion":"Recargar un móvil",
                                                "url":"recargaOtroMovilOnline",
                                                "tipo":"RECARGA",
                                                "comercioElectronico":"true",
                                                "metodo":"POST",
                                                "modo":"ASINCRONICO",
                                                "id":"recharge_online_any_movil",
                                                "alteraPerfilServicio":"NO",
                                                "parametros":{
                                                    "Saldo":{
                                                        "nombre":"Saldo",
                                                        "parametro":"monto",
                                                        "valor":"",
                                                        "tipo":"MONEY",
                                                        "orden":"2"
                                                    }}}}},
                                    "Servicios":{
                                        "Navegación":{
                                            "pedroomar.casabella@nauta.com.cu":{
                                                "perfil":{
                                                    "Cuenta de acceso":"pedroomar.casabella@nauta.com.cu",
                                                    "Fecha de venta":"20-03-2017",
                                                    "Estado":"HABILITADO",
                                                    "Fecha de bloqueo":"30-11-2037",
                                                    "Fecha de eliminación":"31-12-2037",
                                                    "Tipo de acceso":"NAUTA_INTERNACIONAL_RECARGABLE",
                                                    "Horas de bonificación":"0",
                                                    "Bonificación por disfrutar":"00:00:00",
                                                    "Moneda":"CUP",
                                                    "id":"17011138248",
                                                    "saldo":"5.58"
                                                },
                                                "tipoProducto":"NAVEGACION",
                                                "operaciones":{
                                                    "Cambiar contraseña":{
                                                        "operacion":"Cambiar contraseña",
                                                        "url":"changeAccessPassword",
                                                        "tipo":"MODIFICACION",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"change_passw_cuenta_permanente",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"cuenta",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Contraseña anterior":{
                                                                "nombre":"Contraseña anterior",
                                                                "parametro":"oldPassword",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"2"
                                                            },
                                                            "Contraseña nueva":{
                                                                "nombre":"Contraseña nueva",
                                                                "parametro":"newPassword",
                                                                "valor":"",
                                                                "tipo":"NEWPASSWORD",
                                                                "orden":"3"
                                                            }}},
                                                    "Desconectar sesión de navegación":{
                                                        "operacion":"Desconectar sesión de navegación",
                                                        "url":"desconectarServicio",
                                                        "tipo":"MODIFICACION",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"desconectar_cta_permanente",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Contraseña":{
                                                                "nombre":"Contraseña",
                                                                "parametro":"password",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"2"
                                                            }}},
                                                    "Conexiones":{
                                                        "operacion":"Conexiones",
                                                        "url":"queryAccessUse",
                                                        "tipo":"CONSULTA",
                                                        "comercioElectronico":"false",
                                                        "metodo":"GET",
                                                        "modo":"ASINCRONICO",
                                                        "id":"query_access_use",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Mes":{
                                                                "nombre":"Mes",
                                                                "parametro":"mes",
                                                                "valor":"12",
                                                                "tipo":"SELECT",
                                                                "orden":"2",
                                                                "valores":{
                                                                    "10":"Octubre",
                                                                    "11":"Noviembre",
                                                                    "12":"Diciembre"
                                                                }},
                                                            "pagina":{
                                                                "nombre":"pagina",
                                                                "parametro":"pagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"3"
                                                            },
                                                            "Elementos por páginas":{
                                                                "nombre":"Elementos por páginas",
                                                                "parametro":"itemsPorPagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"4"
                                                            }}},
                                                    "Recargas":{
                                                        "operacion":"Recargas",
                                                        "url":"queryRecargas",
                                                        "tipo":"CONSULTA",
                                                        "comercioElectronico":"false",
                                                        "metodo":"GET",
                                                        "modo":"SINCRONICO",
                                                        "id":"query_recharges",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Mes":{
                                                                "nombre":"Mes",
                                                                "parametro":"mes",
                                                                "valor":"12",
                                                                "tipo":"SELECT",
                                                                "orden":"2",
                                                                "valores":{
                                                                    "10":"Octubre",
                                                                    "11":"Noviembre",
                                                                    "12":"Diciembre"
                                                                }},
                                                            "pagina":{
                                                                "nombre":"pagina",
                                                                "parametro":"pagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"3"
                                                            },
                                                            "Elementos por páginas":{
                                                                "nombre":"Elementos por páginas",
                                                                "parametro":"itemsPorPagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"4"
                                                            }}},
                                                    "Transferencias":{
                                                        "operacion":"Transferencias",
                                                        "url":"queryTransferencias",
                                                        "tipo":"CONSULTA",
                                                        "comercioElectronico":"false",
                                                        "metodo":"GET",
                                                        "modo":"SINCRONICO",
                                                        "id":"query_transfer",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Mes":{
                                                                "nombre":"Mes",
                                                                "parametro":"mes",
                                                                "valor":"12",
                                                                "tipo":"SELECT",
                                                                "orden":"2",
                                                                "valores":{
                                                                    "10":"Octubre",
                                                                    "11":"Noviembre",
                                                                    "12":"Diciembre"
                                                                }},
                                                            "pagina":{
                                                                "nombre":"pagina",
                                                                "parametro":"pagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"3"
                                                            },
                                                            "Elementos por páginas":{
                                                                "nombre":"Elementos por páginas",
                                                                "parametro":"itemsPorPagina",
                                                                "valor":"0",
                                                                "tipo":"NUMERIC",
                                                                "orden":"4"
                                                            }}},
                                                    "Recargar cuenta en Línea":{
                                                        "operacion":"Recargar cuenta en Línea",
                                                        "url":"recargaOnline",
                                                        "tipo":"RECARGA",
                                                        "comercioElectronico":"true",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"recharge_online",
                                                        "alteraPerfilServicio":"SIMPLE",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"cuentaAcceso",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Saldo":{
                                                                "nombre":"Saldo",
                                                                "parametro":"monto",
                                                                "valor":"",
                                                                "tipo":"MONEY",
                                                                "orden":"2"
                                                            },
                                                            "Pasarela":{
                                                                "nombre":"Pasarela",
                                                                "parametro":"pasarela",
                                                                "valor":"",
                                                                "tipo":"SELECT",
                                                                "orden":"3",
                                                                "valores":{
                                                                    "TRANSFERMOVIL":"Transfermóvil"
                                                                }}}},
                                                    "Recargar cuenta con cupón":{
                                                        "operacion":"Recargar cuenta con cupón",
                                                        "url":"recargarConCupon",
                                                        "tipo":"RECARGA",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"recharge_voucher",
                                                        "alteraPerfilServicio":"SIMPLE",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Pin":{
                                                                "nombre":"Pin",
                                                                "parametro":"cardPassword",
                                                                "valor":"",
                                                                "tipo":"STRING",
                                                                "orden":"2"
                                                            }}},
                                                    "Recuperar contraseña":{
                                                        "operacion":"Recuperar contraseña",
                                                        "url":"recuperarPasswordAcceso",
                                                        "tipo":"RECUPERAR_PASSWORD",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"recuperar_password_acceso",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de acceso":{
                                                                "nombre":"Cuenta de acceso",
                                                                "parametro":"cuenta",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Código de chequeo":{
                                                                "nombre":"Código de chequeo",
                                                                "parametro":"codigo",
                                                                "valor":"",
                                                                "tipo":"STRING",
                                                                "orden":"2"
                                                            },
                                                            "Contraseña":{
                                                                "nombre":"Contraseña",
                                                                "parametro":"password",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"3"
                                                            }}},
                                                    "Transferir saldo":{
                                                        "operacion":"Transferir saldo",
                                                        "url":"transferirSaldo",
                                                        "tipo":"TRANSFERENCIA",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"transfer_saldo",
                                                        "alteraPerfilServicio":"COMBINADO",
                                                        "parametros":{
                                                            "Cuenta Origen":{
                                                                "nombre":"Cuenta Origen",
                                                                "parametro":"accessLogin",
                                                                "valor":"pedroomar.casabella@nauta.com.cu",
                                                                "tipo":"STRING","orden":"1"
                                                            },
                                                            "Cuenta Destino":{
                                                                "nombre":"Cuenta Destino",
                                                                "parametro":"targetLogin",
                                                                "valor":"",
                                                                "tipo":"STRING",
                                                                "orden":"2"
                                                            },
                                                            "Contraseña":{
                                                                "nombre":"Contraseña",
                                                                "parametro":"accessPassword",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"3"
                                                            },
                                                            "Saldo":{
                                                                "nombre":"Saldo",
                                                                "parametro":"monto",
                                                                "valor":"",
                                                                "tipo":"MONEY",
                                                                "orden":"4"
                                                            }}}}}},
                                        "Correo Nauta":{
                                            "pedroomar.casabella@nauta.cu":{
                                                "perfil":{
                                                    "Fecha de venta":"20-03-2017",
                                                    "Cuenta de correo":"pedroomar.casabella@nauta.cu",
                                                    "Moneda":"CUP",
                                                    "id":"17015138249"
                                                },
                                                "tipoProducto":"CORREO",
                                                "operaciones":{
                                                    "Cambiar contraseña":{
                                                        "operacion":"Cambiar contraseña",
                                                        "url":"changeMailPassword",
                                                        "tipo":"CAMBIO_PASSWORD",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"change_passw_email",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de correo":{
                                                                "nombre":"Cuenta de correo",
                                                                "parametro":"cuenta",
                                                                "valor":"pedroomar.casabella@nauta.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Contraseña anterior":{
                                                                "nombre":"Contraseña anterior",
                                                                "parametro":"oldPassword",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"2"
                                                            },
                                                            "Contraseña nueva":{
                                                                "nombre":"Contraseña nueva",
                                                                "parametro":"newPassword",
                                                                "valor":"",
                                                                "tipo":"NEWPASSWORD",
                                                                "orden":"3"
                                                            }}},
                                                    
                                                    "Recuperar contraseña":{
                                                        "operacion":"Recuperar contraseña",
                                                        "url":"recuperarPasswordCorreo",
                                                        "tipo":"RECUPERAR_PASSWORD",
                                                        "comercioElectronico":"false",
                                                        "metodo":"POST",
                                                        "modo":"ASINCRONICO",
                                                        "id":"recuperar_password_correo",
                                                        "alteraPerfilServicio":"NO",
                                                        "parametros":{
                                                            "Cuenta de correo":{
                                                                "nombre":"Cuenta de correo",
                                                                "parametro":"cuenta",
                                                                "valor":"pedroomar.casabella@nauta.cu",
                                                                "tipo":"STRING",
                                                                "orden":"1"
                                                            },
                                                            "Código de chequeo":{
                                                                "nombre":"Código de chequeo",
                                                                "parametro":"codigo",
                                                                "valor":"",
                                                                "tipo":"STRING",
                                                                "orden":"2"
                                                            },
                                                            "Contraseña":{
                                                                "nombre":"Contraseña",
                                                                "parametro":"password",
                                                                "valor":"",
                                                                "tipo":"PASSWORD",
                                                                "orden":"3"
                                                            }}}}}},
                                        
                                        "Servicios móviles":{
                                            "5351872843":{
                                                "perfil":{
                                                    "id":"5351872843",
                                                    "Número de Teléfono":"51872843",
                                                    "Estado":"Activo",
                                                    "Saldo Principal":"20.00",
                                                    "Fecha de Venta":"19/8/2022",
                                                    "Fecha de Bloqueo":"21/10/2025",
                                                    "Fecha de Eliminación":"20/11/2025",
                                                    "Internet":"HABILITADO",
                                                    "4G":"HABILITADO",
                                                    "Adelanta Saldo":"0",
                                                    "Tarifa por Consumo":"NO DEFINIDO",
                                                    "Moneda":"CUP",
                                                    "Listas":{
                                                        "Planes":{
                                                            "3":{
                                                                "tipo":"MINUTOS",
                                                                "Vence":"25/12/2024",
                                                                "Datos":"01:004:19:10:00"
                                                            },
                                                            "4":{
                                                                "tipo":"SMS",
                                                                "Vence":"25/12/2024",
                                                                "Datos":"7520"
                                                            },
                                                            "7":{
                                                                "tipo":"DATOS",
                                                                "Vence":"25/12/2024",
                                                                "Datos":"3.49 GB"
                                                            },
                                                            "20":{
                                                                "tipo":"DATOS LTE",
                                                                "Vence":"25/12/2024"
                                                                ,"Datos":"134.60 MB"
                                                            }},
                                                        "Bonos":{
                                                            "16":{
                                                                "tipo":"DATOS NACIONALES",
                                                                "Fecha inicio":"",
                                                                "Vence":"25/12/2024",
                                                                "Datos":"299.72 MB"},
                                                            "23":{
                                                                "tipo":"DATOS LTE",
                                                                "Fecha inicio":"18/03/2023",
                                                                "Vence":"25/12/2024",
                                                                "Datos":"0"}}}},"operaciones":{}},
                                            "5355627579":{
                                                "perfil":{
                                                    "id":"5355627579",
                                                    "Número de Teléfono":"55627579",
                                                    "Estado":"Activo",
                                                    "Saldo Principal":"2715.01",
                                                    "Fecha de Venta":"29/8/2016",
                                                    "Fecha de Bloqueo":"26/9/2025",
                                                    "Fecha de Eliminación":"26/10/2025",
                                                    "Internet":"HABILITADO",
                                                    "4G":"HABILITADO",
                                                    "Adelanta Saldo":"0",
                                                    "Tarifa por Consumo":"NO DEFINIDO",
                                                    "Moneda":"CUP",
                                                    "Listas":{
                                                        "Planes":{
                                                            "3":{
                                                                "tipo":"MINUTOS",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"01:001:19:43:16"
                                                            },
                                                            "4":{
                                                                "tipo":"SMS",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"2831"},
                                                            "7":{
                                                                "tipo":"DATOS",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"3.57 GB"},
                                                            "20":{
                                                                "tipo":"DATOS LTE",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"3.65 GB"}},
                                                        "Bonos":{
                                                            "16":{
                                                                "tipo":"DATOS NACIONALES",
                                                                "Fecha inicio":"",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"299.98 MB"},
                                                            "23":{
                                                                "tipo":"DATOS LTE",
                                                                "Fecha inicio":"28/11/2023",
                                                                "Vence":"31/12/2024",
                                                                "Datos":"0"}}}},"operaciones":{}},
                                            "5350183539":{
                                                "perfil":{
                                                    "id":"5350183539",
                                                    "Número de Teléfono":"50183539",
                                                    "Estado":"Activo",
                                                    "Saldo Principal":"4227.47",
                                                    "Fecha de Venta":"25/7/2023",
                                                    "Fecha de Bloqueo":"26/9/2025",
                                                    "Fecha de Eliminación":"26/10/2025",
                                                    "Internet":"DESHABILITADO",
                                                    "4G":"DESHABILITADO",
                                                    "Adelanta Saldo":"0",
                                                    "Tarifa por Consumo":"NO DEFINIDO",
                                                    "Moneda":"CUP",
                                                    "Listas":
                                                {}},
                                                "operaciones":
                                            {}}},
                                        "Telefonía fija":
                                    {}},
                                    "servicios_actualizados":"true",
                                    "completado":"true",
                                    "fechaActualizacion":"2024-12-01 17:17:21"
                                    },
                                "resultado":"ok"
                            }}
        """
    }
}
