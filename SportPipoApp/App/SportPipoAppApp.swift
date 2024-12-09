//
//  SportPipoAppApp.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI

@main
struct SportPipoApp: App {
    let coreDataStack = CoreDataStack.shared

    var body: some Scene {
        WindowGroup {
            ProductsView(products: [
                ProductModel(name: "Creatina", price: 29.99, descripcion: "Mejora tu rendimiento.", category: "Suplementos", imageName: "cube.box.fill", linkAmazon: "https://amazon.com/creatina"),
                ProductModel(name: "Proteínas", price: 19.99, descripcion: "Recuperación muscular.", category: "Suplementos", imageName: "flame.fill", linkAmazon: "https://amazon.com/proteinas"),
                ProductModel(name: "Shaker", price: 9.99, descripcion: "Mezclador de calidad.", category: "Accesorios", imageName: "bottle.fill", linkAmazon: "https://amazon.com/shaker")
            ])
            .environment(\.managedObjectContext, coreDataStack.viewContext)
        }
    }
}
