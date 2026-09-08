//
//  cliente.swift
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

public struct Cliente: Decodable, Hashable, Encodable, Sendable {
    public let nombre: String
    public let telefono: String
    public let email: String
    public let notificaciones_mail: String
    public let notificaciones_movil: String
    public let usuario_portal: String
    public let operaciones: Operaciones

    enum CodingKeys: String, CodingKey {
        case nombre = "nombre"
        case telefono = "telefono"
        case email = "email"
        case notificaciones_mail = "notificaciones_mail"
        case notificaciones_movil = "notificaciones_movil"
        case usuario_portal = "usuario_portal"
        case operaciones = "operaciones"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.telefono = try container.decode(String.self, forKey: .telefono)
        self.email = try container.decode(String.self, forKey: .email)
        self.notificaciones_mail = try container.decode(String.self, forKey: .notificaciones_mail)
        self.notificaciones_movil = try container.decode(String.self, forKey: .notificaciones_movil)
        self.usuario_portal = try container.decode(String.self, forKey: .usuario_portal)
        self.operaciones = try container.decode(Operaciones.self, forKey: .operaciones)
    }

    public init(nombre: String, telefono: String, email: String, notificaciones_mail: String, notificaciones_movil: String, usuario_portal: String, operaciones: Operaciones) {
        self.nombre = nombre
        self.telefono = telefono
        self.email = email
        self.notificaciones_mail = notificaciones_mail
        self.notificaciones_movil = notificaciones_movil
        self.usuario_portal = usuario_portal
        self.operaciones = operaciones
    }
}
