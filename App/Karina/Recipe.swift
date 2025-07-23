
//
//  Recipe.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//

import Foundation
struct Recipe: Identifiable{ //for-each
    let id = UUID()
    var name: String
    var imageName: String
    var calories: Int
    var time: Int
}
