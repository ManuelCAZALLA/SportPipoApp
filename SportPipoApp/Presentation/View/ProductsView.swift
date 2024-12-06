//
//  ProductsView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI

struct ProductsView: View {
    var products: [Product]

    var body: some View {
        TabView {
            
            ProductCategoryView(
                categoryName: "Suplementos",
                products: products.filter { $0.category == "Suplementos" }
            )
            .tabItem {
                Image(systemName: "leaf.circle.fill")
                Text("Suplementos")
            }

            
            ProductCategoryView(
                categoryName: "Accesorios",
                products: products.filter { $0.category == "Accesorios" }
            )
            .tabItem {
                Image(systemName: "sportscourt.fill")
                Text("Accesorios")
            }

            
            AmazonPurchaseView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Compra")
                }
        }
        .accentColor(.blue)
    }
}


#Preview {
    ProductsView(products: [Product(name: "Creatina", price: 29.99, descripcion: "Mejora tu rendimiento.", category: "Suplementos", imageName: "cube.box.fill", linkAmazon: "https://amazon.com/creatina"),
                            Product(name: "Proteínas", price: 19.99, descripcion: "Recuperación muscular.", category: "Suplementos", imageName: "flame.fill", linkAmazon: "https://amazon.com/proteinas"),
                            Product(name: "Shaker", price: 9.99, descripcion: "Mezclador de calidad.", category: "Accesorios", imageName: "bottle.fill", linkAmazon: "https://amazon.com/shaker")
                        ]
)
}
