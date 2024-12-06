//
//  Model.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import Foundation

struct Product: Identifiable {
    let id: UUID = UUID()
    let name: String
    let price: Double
    let descripcion: String?
    let category: String
    let imageName: String
    let linkAmazon: String
}
