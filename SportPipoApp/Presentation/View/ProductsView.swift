//
//  ProductsView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        TabView {
           
            ProductCategoryView(categoryName: "Suplementos", products: [
                Product(name: "Creatina", imageName: "cube.box.fill"),
                Product(name: "Proteínas", imageName: "flame.fill"),
                Product(name: "Geles Energéticos", imageName: "bolt.fill")
            ])
            .tabItem {
                Image(systemName: "leaf.circle.fill")
                Text("Suplementos")
            }

            // Segunda pestaña: Accesorios
            ProductCategoryView(categoryName: "Accesorios", products: [
                Product(name: "Shaker", imageName: "bottle.fill"),
                Product(name: "Toalla", imageName: "t.square.fill"),
                Product(name: "Cinturón", imageName: "heart.text.square.fill")
            ])
            .tabItem {
                Image(systemName: "sportscourt.fill")
                Text("Accesorios")
            }

            // Tercera pestaña: Compra
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
    ProductsView()
}
