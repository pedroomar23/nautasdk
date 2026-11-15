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
            [
              {
                "id": "banner-recarga-movil",
                "titulo": "Recarga tu móvil",
                "descripcion": "Recarga saldo desde la Tienda Etecsa.",
                "imagen": "https://tienda.etecsa.cu/assets/banners/recarga-movil.png",
                "url": "https://tienda.etecsa.cu/recarga-movil",
                "operacion": "recargaOtroMovilOnline",
                "orden": 1,
                "activo": true
              },
              {
                "id": "banner-nauta-hogar",
                "titulo": "Paga tu Nauta Hogar",
                "descripcion": "Paga la cuota de tu servicio Nauta Hogar.",
                "imagen": "https://tienda.etecsa.cu/assets/banners/nauta-hogar.png",
                "url": "https://tienda.etecsa.cu/pago-nauta-hogar",
                "operacion": "pagoOnlineCMNH",
                "orden": 2,
                "activo": true
              }
            ]
        """
        let jsonData = jsonString.data(using: .utf8)!
        let banners = try JSONDecoder().decode([Banner].self, from: jsonData)
        
        XCTAssertEqual(banners.count, 2)
        XCTAssertEqual(banners[0].id, "banner-recarga-movil")
        XCTAssertEqual(banners[0].titulo, "Recarga tu móvil")
        XCTAssertEqual(banners[0].operacion, "recargaOtroMovilOnline")
        XCTAssertEqual(banners[0].orden, 1)
        XCTAssertTrue(banners[0].activo)
        XCTAssertEqual(banners[1].id, "banner-nauta-hogar")
        XCTAssertEqual(banners[1].operacion, "pagoOnlineCMNH")
        XCTAssertEqual(banners[1].orden, 2)
    }
}
