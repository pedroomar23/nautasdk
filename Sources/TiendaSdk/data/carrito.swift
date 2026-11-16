//
//  carrito.swift
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

public struct Carrito: Codable, Sendable {
    public let id_carrito: String 
    public let ecrm: [ECRM]
    public let totalECRM: Int 
    public let ema: [EMA]
    public let totalEMA: Double 
    public let gesNauta: [GesNauta]
    public let totalGESNAUTA: Int 
    public let disponible: Bool 

    enum CodingKeys: String, CodingKey {
        case id_carrito = "id_carrito"
        case ecrm = "ecrm"
        case totalECRM = "totalECRM"
        case ema = "ema"
        case totalEMA = "totalEMA"
        case gesNauta = "gesNauta"
        case totalGESNAUTA = "totalGESNAUTA"
        case disponible = "disponible"
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id_carrito = try container.decode(String.self, forKey: .id_carrito)
        self.ecrm = try container.decode([ECRM].self, forKey: .ecrm)
        self.totalECRM = try container.decode(Int.self, forKey: .totalECRM)
        self.ema = try container.decode([EMA].self, forKey: .ema)
        self.totalEMA = try container.decode(Double.self, forKey: .totalEMA)
        self.gesNauta = try container.decode([GesNauta].self, forKey: .gesNauta)
        self.totalGESNAUTA = try container.decode(Int.self, forKey: .totalGESNAUTA)
        self.disponible = try container.decode(Bool.self, forKey: .disponible)
    }

    public init(id_carrito: String, ecrm: [ECRM], totalECRM: Int, ema: [EMA], totalEMA: Double, gesNauta: [GesNauta], totalGESNAUTA: Int, dispobible: Bool) {
        self.id_carrito = id_carrito
        self.ecrm = ecrm
        self.totalECRM = totalECRM
        self.ema = ema 
        self.totalEMA = totalEMA
        self.gesNauta = gesNauta 
        self.totalGESNAUTA = totalGESNAUTA
        self.disponible = dispobible
    }
}

public struct EMA: Codable, Sendable {
    public let id: String
    public let service: String
    public let real_import: Double
    public let description: String
    public let pay_type: Int
    public let refill: String
    public let plan: Int
    public let plan3: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case service = "service"
        case real_import = "real_import"
        case description = "description"
        case pay_type = "pay_type"
        case refill = "refill"
        case plan = "plan"
        case plan3 = "plan3"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.service = try container.decode(String.self, forKey: .service)
        self.real_import = try container.decode(Double.self, forKey: .real_import)
        self.description = try container.decode(String.self, forKey: .description)
        self.pay_type = try container.decode(Int.self, forKey: .pay_type)
        self.refill = try container.decode(String.self, forKey: .refill)
        self.plan = try container.decode(Int.self, forKey: .plan)
        self.plan3 = try container.decode(Int.self, forKey: .plan3)
    }
    
    public init(id: String, service: String, real_import: Double, description: String, pay_type: Int, refill: String, plan: Int, plan3: Int) {
        self.id = id
        self.service = service
        self.real_import = real_import
        self.description = description
        self.pay_type = pay_type
        self.refill = refill
        self.plan = plan
        self.plan3 = plan3
    } 
}

public struct ECRM: Codable, Sendable {

}

public struct GesNauta: Codable, Sendable {

}


