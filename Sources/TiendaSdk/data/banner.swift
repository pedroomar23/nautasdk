//
//  banner.swift
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

public struct Banner: Codable, Sendable {
    public let bannerTop: [BannerTop]
    public let ppb: [PPB]
    public let bannerIntermedio: BannerIntermedio
    public let oportunidades: [Oportunidad]

    enum CodingKeys: String, CodingKey {
        case bannerTop = "banner_top"
        case ppb = "ppb"
        case bannerIntermedio = "banner_itermedio"
        case oportunidades = "oportunidades"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bannerTop = try container.decode([BannerTop].self, forKey: .bannerTop)
        self.ppb = try container.decode([PPB].self, forKey: .ppb)
        self.bannerIntermedio = try container.decode(BannerIntermedio.self, forKey: .bannerIntermedio)
        self.oportunidades = try container.decode([Oportunidad].self, forKey: .oportunidades)
    }

    public init(bannerTop: [BannerTop], ppb: [PPB], bannerIntermedio: BannerIntermedio, oportunidades: [Oportunidad]) {
        self.bannerTop = bannerTop
        self.ppb = ppb
        self.bannerIntermedio = bannerIntermedio
        self.oportunidades = oportunidades
    }
}

// MARK: - Banner Top

public struct BannerTop: Codable, Sendable {
    public let id: Int
    public let nombreBoton: String
    public let icono: String
    public let imagen: String
    public let iconoSecundario: String
    public let imagenCelular: String
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case nombreBoton = "nombre_boton"
        case icono = "icono"
        case imagen = "imagen"
        case iconoSecundario = "icono_secundario"
        case imagenCelular = "imagen_celular"
        case url = "url"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.nombreBoton = try container.decode(String.self, forKey: .nombreBoton)
        self.icono = try container.decode(String.self, forKey: .icono)
        self.imagen = try container.decode(String.self, forKey: .imagen)
        self.iconoSecundario = try container.decode(String.self, forKey: .iconoSecundario)
        self.imagenCelular = try container.decode(String.self, forKey: .imagenCelular)
        self.url = try container.decode(String.self, forKey: .url)
    }

    public init(id: Int, nombreBoton: String, icono: String, imagen: String, iconoSecundario: String, imagenCelular: String, url: String) {
        self.id = id
        self.nombreBoton = nombreBoton
        self.icono = icono
        self.imagen = imagen
        self.iconoSecundario = iconoSecundario
        self.imagenCelular = imagenCelular
        self.url = url
    }
}

// MARK: - PPB

public struct PPB: Codable, Sendable {
    public let id: Int
    public let nombre: String
    public let precio: Double
    public let tarifaConsumo: Int
    public let package3G: Int
    public let package4G: Int
    public let descripcion: [PPBDescripcion]
    public let imagen: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case nombre = "nombre"
        case precio = "precio"
        case tarifaConsumo = "tarifa_consumo"
        case package3G = "package3G"
        case package4G = "package4G"
        case descripcion = "descripcion"
        case imagen = "imagen"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.nombre = try container.decode(String.self, forKey: .nombre)
        self.precio = try container.decode(Double.self, forKey: .precio)
        self.tarifaConsumo = try container.decode(Int.self, forKey: .tarifaConsumo)
        self.package3G = try container.decode(Int.self, forKey: .package3G)
        self.package4G = try container.decode(Int.self, forKey: .package4G)
        self.descripcion = try container.decode([PPBDescripcion].self, forKey: .descripcion)
        self.imagen = try container.decode(String.self, forKey: .imagen)
    }

    public init(id: Int, nombre: String, precio: Double, tarifaConsumo: Int, package3G: Int, package4G: Int, descripcion: [PPBDescripcion], imagen: String) {
        self.id = id
        self.nombre = nombre
        self.precio = precio
        self.tarifaConsumo = tarifaConsumo
        self.package3G = package3G
        self.package4G = package4G
        self.descripcion = descripcion
        self.imagen = imagen
    }
}

public struct PPBDescripcion: Codable, Sendable {
    public let id: Int
    public let title: String
    public let description: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
    }

    public init(id: Int, title: String, description: String) {
        self.id = id
        self.title = title
        self.description = description
    }
}

// MARK: - Banner Intermedio

public struct BannerIntermedio: Codable, Sendable {
    public let bannerImage: String
    public let bannerPhoneImage: String

    enum CodingKeys: String, CodingKey {
        case bannerImage = "banner_image"
        case bannerPhoneImage = "banner_phone_image"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bannerImage = try container.decode(String.self, forKey: .bannerImage)
        self.bannerPhoneImage = try container.decode(String.self, forKey: .bannerPhoneImage)
    }

    public init(bannerImage: String, bannerPhoneImage: String) {
        self.bannerImage = bannerImage
        self.bannerPhoneImage = bannerPhoneImage
    }
}

// MARK: - Oportunidad

public struct Oportunidad: Codable, Sendable {
    public let id: Int
    public let title: String
    public let subtitle: String
    public let actionName: String
    public let image: String
    public let urlName: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case subtitle = "subtitle"
        case actionName = "action_name"
        case image = "image"
        case urlName = "url_name"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.subtitle = try container.decode(String.self, forKey: .subtitle)
        self.actionName = try container.decode(String.self, forKey: .actionName)
        self.image = try container.decode(String.self, forKey: .image)
        self.urlName = try container.decode(String.self, forKey: .urlName)
    }

    public init(id: Int, title: String, subtitle: String, actionName: String, image: String, urlName: String) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.actionName = actionName
        self.image = image
        self.urlName = urlName
    }
}

