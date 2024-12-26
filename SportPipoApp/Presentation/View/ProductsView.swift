//
//  ProductsView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI

struct ProductsView: View {
    var products: [ProductModel] // Recibe modelos simples de productos

    var body: some View {
        List(products) { product in
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text("Precio: \(product.price, specifier: "%.2f") €")
                    .font(.subheadline)
                if let descripcion = product.descripcion {
                    Text(descripcion)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("Productos")
    }
}

#Preview {
    ProductsView(products: [
                ProductModel(name: "Creatina", price: 29.99, descripcion: "Mejora tu rendimiento.", category: "Suplementos", imageName: "cube.box.fill", linkAmazon: "https://amazon.com/creatina"),
                ProductModel(name: "Proteínas", price: 19.99, descripcion: "Recuperación muscular.", category: "Suplementos", imageName: "flame.fill", linkAmazon: "https://amazon.com/proteinas"),
                ProductModel(name: "Shaker", price: 9.99, descripcion: "Mezclador de calidad.", category: "Accesorios", imageName: "bottle.fill", linkAmazon: "https://amazon.com/shaker")
            ])
        }
