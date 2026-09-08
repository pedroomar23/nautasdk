//
//  serviciosMoviles.swift
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

// MARK: - Perfil

public struct Perfil: Decodable, Hashable, Encodable, Sendable {
    public let id: String
    public let numeroTelefono: String
    public let estado: String
    public let saldoPrincipal: String
    public let fechaVenta: String
    public let fechaBloqueo: String
    public let fechaEliminacion: String
    public let internet: String
    public let cuatroG: String
    public let adelantaSaldo: String
    public let tarifaConsumo: String
    public let moneda: String
    public let listas: [Listas]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case numeroTelefono = "numeroTelefono"
        case estado = "estado"
        case saldoPrincipal = "saldoPrincipal"
        case fechaVenta = "fechaVenta"
        case fechaBloqueo = "fechaBloqueo"
        case fechaEliminacion = "fechaEliminacion"
        case internet = "internet"
        case cuatroG = "cuatroG"
        case adelantaSaldo = "adelantaSaldo"
        case tarifaConsumo = "tarifaConsumo"
        case moneda = "moneda"
        case listas = "listas"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.numeroTelefono = try container.decode(String.self, forKey: .numeroTelefono)
        self.estado = try container.decode(String.self, forKey: .estado)
        self.saldoPrincipal = try container.decode(String.self, forKey: .saldoPrincipal)
        self.fechaVenta = try container.decode(String.self, forKey: .fechaVenta)
        self.fechaBloqueo = try container.decode(String.self, forKey: .fechaBloqueo)
        self.fechaEliminacion = try container.decode(String.self, forKey: .fechaEliminacion)
        self.internet = try container.decode(String.self, forKey: .internet)
        self.cuatroG = try container.decode(String.self, forKey: .cuatroG)
        self.adelantaSaldo = try container.decode(String.self, forKey: .adelantaSaldo)
        self.tarifaConsumo = try container.decode(String.self, forKey: .tarifaConsumo)
        self.moneda = try container.decode(String.self, forKey: .moneda)
        self.listas = try container.decode([Listas].self, forKey: .listas)
    }
}

// MARK: - Listas

public struct Listas: Decodable, Hashable, Encodable, Sendable {
    public let planes: [Planes]

    enum CodingKeys: String, CodingKey {
        case planes = "planes"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.planes = try container.decode([Planes].self, forKey: .planes)
    }

    public init(planes: [Planes]) {
        self.planes = planes
    }
}

// MARK: - Planes

public struct Planes: Decodable, Hashable, Encodable, Sendable {
    public let tipo: String
    public let vence: String
    public let datos: String

    enum CodingKeys: String, CodingKey {
        case tipo = "tipo"
        case vence = "Vence"
        case datos = "Datos"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.vence = try container.decode(String.self, forKey: .vence)
        self.datos = try container.decode(String.self, forKey: .datos)
    }

    public init(tipo: String, vence: String, datos: String) {
        self.tipo = tipo
        self.vence = vence
        self.datos = datos
    }
}

// MARK: - Bonos

public struct Bonos: Decodable, Hashable, Encodable, Sendable {
    public let tipo: String
    public let fecha: String
    public let vence: String
    public let datos: String

    enum CodingKeys: String, CodingKey {
        case tipo = "tipo"
        case fecha = "fecha"
        case vence = "Vence"
        case datos = "Datos"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tipo = try container.decode(String.self, forKey: .tipo)
        self.fecha = try container.decode(String.self, forKey: .fecha)
        self.vence = try container.decode(String.self, forKey: .vence)
        self.datos = try container.decode(String.self, forKey: .datos)
    }

    public init(tipo: String, fecha: String, vence: String, datos: String) {
        self.tipo = tipo
        self.fecha = fecha
        self.vence = vence
        self.datos = datos
    }
}
