//
//  banner.swift
//  EtecsaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

// MARK: - Banner

public struct Banner: Codable, Sendable {
    public let id: String
    public let titulo: String
    public let descripcion: String
    public let imagen: String
    public let url: String
    public let operacion: String
    public let orden: Int
    public let activo: Bool

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case titulo = "titulo"
        case descripcion = "descripcion"
        case imagen = "imagen"
        case url = "url"
        case operacion = "operacion"
        case orden = "orden"
        case activo = "activo"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.titulo = try container.decode(String.self, forKey: .titulo)
        self.descripcion = try container.decode(String.self, forKey: .descripcion)
        self.imagen = try container.decode(String.self, forKey: .imagen)
        self.url = try container.decode(String.self, forKey: .url)
        self.operacion = try container.decode(String.self, forKey: .operacion)
        self.orden = try container.decode(Int.self, forKey: .orden)
        self.activo = try container.decode(Bool.self, forKey: .activo)
    }

    public init(id: String, titulo: String, descripcion: String, imagen: String, url: String, operacion: String, orden: Int, activo: Bool) {
        self.id = id
        self.titulo = titulo
        self.descripcion = descripcion
        self.imagen = imagen
        self.url = url
        self.operacion = operacion
        self.orden = orden
        self.activo = activo
    }
}
