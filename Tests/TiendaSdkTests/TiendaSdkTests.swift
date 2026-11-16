import Foundation
@testable import TiendaSdk
import XCTest

final class TiendaSdkTests: XCTestCase {
    
    // MARK: - Datos
    
    func testDatos() async throws {
        
    }
    
    // MARK: - Banner
    
    func testBanner() async throws {
        let jsonString = """
            {
                "banner_top": [
                    {
                        "id": 2,
                        "nombre_boton": "COMPRAR PLANES",
                        "icono": "/static/tienda_etecsa/iconos/home/carrusel_top/PLANESPAQUETESBOLSAS_ICONOTOP_INACTIVO_TIENDAETECSA.svg",
                        "imagen": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_BANNER2_ETECSA.jpg",
                        "icono_secundario": "/static/tienda_etecsa/iconos/home/carrusel_top/PLANESPAQUETESBOLSAS_ICONOTOP_ACTIVO_TIENDAETECSA.svg",
                        "imagen_celular": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_420x420_BANNER2_ETECSA.jpg",
                        "url": "/usuarios/moviles/voz"
                    },
                    {
                        "id": 4,
                        "nombre_boton": "ACTIVAR SERVICIOS SUPLEMENTARIOS",
                        "icono": "/static/tienda_etecsa/iconos/home/carrusel_top/SERVICIOSSUPLEMENTARIO_ICONOTOP_INACTIVO_TIENDAETECSA.svg",
                        "imagen": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_BANNER3_ETECSA.jpg",
                        "icono_secundario": "/static/tienda_etecsa/iconos/home/carrusel_top/SERVICIOSSUPLEMENTARIO_ICONOTOP_ACTIVO_TIENDAETECSA.svg",
                        "imagen_celular": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_420x420_BANNER3_ETECSA.jpg",
                        "url": "/usuarios/hogar/linea-fija/suplementarios"
                    },
                    {
                        "id": 3,
                        "nombre_boton": "PAGAR FACTURA",
                        "icono": "/static/tienda_etecsa/iconos/home/carrusel_top/FACTURATELEFONICA_ICONOTOP_INACTIVO_TIENDAETECSA.svg",
                        "imagen": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_BANNER1_ETECSA.jpg",
                        "icono_secundario": "/static/tienda_etecsa/iconos/home/carrusel_top/FACTURATELEFONICA_ICONOTOP_ACTIVO_TIENDAETECSA.svg",
                        "imagen_celular": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_420x420_BANNER1_ETECSA.jpg",
                        "url": "/usuarios/hogar/linea-fija/pago-factura"
                    },
                    {
                        "id": 1,
                        "nombre_boton": "RECARGAR NAUTA HOGAR",
                        "icono": "/static/tienda_etecsa/iconos/home/carrusel_top/NAUTAHOGAR_ICONOTOP_INACTIVO_TIENDAETECSA.svg",
                        "imagen": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_BANNER4_ETECSA.jpg",
                        "icono_secundario": "/static/tienda_etecsa/iconos/home/carrusel_top/NAUTAHOGAR_ICONOTOP_ACTIVO_TIENDAETECSA.svg",
                        "imagen_celular": "/static/tienda_etecsa/imagenes/home/carrusel_top/SERVICIOS_EN_LINEA_420x420_BANNER4_ETECSA.jpg",
                        "url": "/usuarios/hogar/nauta-hogar/pago-cuota"
                    }
                ],
                "ppb": [
                    {
                        "id": 1,
                        "nombre": "Plan de Datos 3GB",
                        "precio": 3360.0,
                        "tarifa_consumo": 0,
                        "package3G": 0,
                        "package4G": 0,
                        "descripcion": [
                            {
                                "id": 1,
                                "title": "Plan 3GB",
                                "description": "Plan 3GB"
                            }
                        ],
                        "imagen": "/static/tienda_etecsa/imagenes/servicios_moviles/bolsas_paquetes_planes/PAQUETES_COMPRA DIRECTA_3GB.svg"
                    },
                    {
                        "id": 2,
                        "nombre": "Plan de Datos 7GB",
                        "precio": 6720.0,
                        "tarifa_consumo": 0,
                        "package3G": 0,
                        "package4G": 0,
                        "descripcion": [
                            {
                                "id": 2,
                                "title": "Plan 7 GB",
                                "description": "Plan 7 GB"
                            }
                        ],
                        "imagen": "/static/tienda_etecsa/imagenes/servicios_moviles/bolsas_paquetes_planes/PAQUETES_COMPRA DIRECTA_7GB.svg"
                    },
                    {
                        "id": 3,
                        "nombre": "Plan de Datos 15GB",
                        "precio": 11760.0,
                        "tarifa_consumo": 0,
                        "package3G": 0,
                        "package4G": 0,
                        "descripcion": [
                            {
                                "id": 3,
                                "title": "Plan 15GB",
                                "description": "Plan 15GB"
                            }
                        ],
                        "imagen": "/static/tienda_etecsa/imagenes/servicios_moviles/bolsas_paquetes_planes/PAQUETES_COMPRA DIRECTA_15GB.svg"
                    }
                ],
                "banner_itermedio": {
                    "banner_image": "/static/tienda_etecsa/imagenes/home/banner_intermedio/IMAGENTIENDA-ETECSA.jpg",
                    "banner_phone_image": "/static/tienda_etecsa/imagenes/home/banner_intermedio/IMAGENTIENDA-DERECHA-ETECSA.jpg"
                },
                "oportunidades": [
                    {
                        "id": 1,
                        "title": "¡Navegue con más velocidad!",
                        "subtitle": "¿Ya puede acceder a la red 4G?",
                        "action_name": "HABILITAR",
                        "image": "/static/tienda_etecsa/imagenes/home/oportunidades/OPORTUNIDADES_ACTIVAR4G_ETECSA.jpg",
                        "url_name": "/usuarios/moviles/cambios-linea/habilitar-accesos"
                    },
                    {
                        "id": 2,
                        "title": "¡Proteja su saldo Móvil!",
                        "subtitle": "Cambie la clave para transferir saldo",
                        "action_name": "CAMBIAR",
                        "image": "/static/tienda_etecsa/imagenes/home/oportunidades/OPORTUNIDADES_RECARGAMOVIL2_ETECSA.jpg",
                        "url_name": "/usuarios/moviles/cambios-linea/cambiar-clave"
                    },
                    {
                        "id": 3,
                        "title": "¡Gane en comodidad!",
                        "subtitle": "Utilice los servicios suplementarios",
                        "action_name": "ACTIVAR",
                        "image": "/static/tienda_etecsa/imagenes/home/oportunidades/IMAGENSERVICIOPORTUNIDADES4_300x180_100KB_ETECSA.jpg",
                        "url_name": "/usuarios/hogar/linea-fija/suplementarios"
                    }
                ]
            }
        """
        let jsonData = try XCTUnwrap(jsonString.data(using: .utf8))
        let banner = try JSONDecoder().decode(Banner.self, from: jsonData)
        
        XCTAssertEqual(banner.bannerTop.count, 4)
        XCTAssertEqual(banner.bannerTop[0].id, 2)
        XCTAssertEqual(banner.bannerTop[0].nombreBoton, "COMPRAR PLANES")
        XCTAssertEqual(banner.bannerTop[0].url, "/usuarios/moviles/voz")
        
        XCTAssertEqual(banner.ppb.count, 3)
        XCTAssertEqual(banner.ppb[0].id, 1)
        XCTAssertEqual(banner.ppb[0].precio, 3360.0)
        XCTAssertEqual(banner.ppb[0].descripcion.count, 1)
        XCTAssertEqual(banner.ppb[0].descripcion[0].title, "Plan 3GB")
        
        XCTAssertEqual(banner.bannerIntermedio.bannerImage, "/static/tienda_etecsa/imagenes/home/banner_intermedio/IMAGENTIENDA-ETECSA.jpg")
        
        XCTAssertEqual(banner.oportunidades.count, 3)
        XCTAssertEqual(banner.oportunidades[0].actionName, "HABILITAR")
        XCTAssertEqual(banner.oportunidades[0].urlName, "/usuarios/moviles/cambios-linea/habilitar-accesos")
    }

    // MARK: - Carrito

    func testCarrito() throws {
        let jsonString = """
        {
            "id_carrito":2416,
            "ecrm":[],
            "totalECRM":0,
            "ema":[{
                "id":"015926",
                 "service":"+53 55627579",
                 "real_import":3360.0,
                 "description":"Compra de Plan de Datos 3GB",
                 "pay_type":2,
                 "refill":"P016",
                 "plan":1,
                "plan3":0
            }],
            "totalEMA":3360.0,
            "gesnauta":[],
             "totalGESNAUTA":0,
            "disponible":true
        }
        """
        let jsonData = jsonString.data(using: .utf8)!
        let carrito = try JSONDecoder().decode(Carrito.self, from: jsonData)
        print("JSON RESPONSE: \(carrito)")
    }
}
