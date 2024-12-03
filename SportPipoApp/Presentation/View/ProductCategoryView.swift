//
//  ProductCategoryView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI
import Foundation

struct ProductCategoryView: View {
    let categoryName: String
    let products: [Product]

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.1), .gray.opacity(0.2)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(categoryName)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)

                    ForEach(products) { product in
                        HStack {
                            Image(systemName: product.imageName)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                                .padding()

                            Text(product.name)
                                .font(.headline)
                                .padding()

                            Spacer()
                        }
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                    }
                }
                .padding()
            }
        }
    }
}


#Preview {
    ProductCategoryView(categoryName: "Proteinas", products: [])
}
