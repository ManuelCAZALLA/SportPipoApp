//
//  RootView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 10/12/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootViewModel: RootViewModel

    var body: some View {
        NavigationView {
            Group {
                switch rootViewModel.status {
                case .none:
                    LoginView()
                case .loaded:
                    ProductCategoryView(
                        categoryName: "Proteínas",
                        products: []
                    )
                case .loading:
                    ProductsView(
                        products: [
                            ProductModel(
                                name: "Creatina",
                                price: 29.99,
                                descripcion: "Mejora tu rendimiento.",
                                category: "Suplementos",
                                imageName: "cube.box.fill",
                                linkAmazon: "https://amazon.com/creatina"
                            ),
                            ProductModel(
                                name: "Proteínas",
                                price: 19.99,
                                descripcion: "Recuperación muscular.",
                                category: "Suplementos",
                                imageName: "flame.fill",
                                linkAmazon: "https://amazon.com/proteinas"
                            ),
                            ProductModel(
                                name: "Shaker",
                                price: 9.99,
                                descripcion: "Mezclador de calidad.",
                                category: "Accesorios",
                                imageName: "bottle.fill",
                                linkAmazon: "https://amazon.com/shaker"
                            )
                        ]
                    )
                case .error(let errorString):
                    ErrorView(error: errorString)
                }
            }
            
        }
    }
}

#Preview {
    RootView()
        .environmentObject(RootViewModel())
}

