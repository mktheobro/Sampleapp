//
//  Entity.swift
//  Sampleapp
//
//  Created by 久保政人 on 2021/07/05.
//

struct CovidInfo: Codable{
    struct Total: Codable{
        var pcr: Int
        var postive: Int
        var hospitalize: Int
        var severe: Int
        var death: Int
        var discharge: Int
    }
}

import Foundation
