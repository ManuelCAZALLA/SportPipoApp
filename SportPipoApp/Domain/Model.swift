//
//  Model.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}
