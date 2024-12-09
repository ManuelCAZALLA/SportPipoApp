//
//  Model.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import Foundation

struct ProductModel: Identifiable {
    var id: UUID = UUID() // Se genera automáticamente
    var name: String
    var price: Double
    var descripcion: String?
    var category: String
    var imageName: String
    var linkAmazon: String

 
    init(
        name: String,
        price: Double,
        descripcion: String? = nil,
        category: String,
        imageName: String,
        linkAmazon: String
    ) {
        self.name = name
        self.price = price
        self.descripcion = descripcion
        self.category = category
        self.imageName = imageName
        self.linkAmazon = linkAmazon
    }
}
