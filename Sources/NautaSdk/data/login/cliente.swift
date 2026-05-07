//
//  cliente.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
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
}
