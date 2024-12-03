//
//  ProducRowView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import SwiftUI

struct ProductsRowView: View {
    let producto: Producto

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: producto.imageURL ?? "")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 80, height: 80)
            .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(producto.name ?? "")
                    .font(.headline)
                Text(String(format: "$%.2f", producto.price))
                    .font(.subheadline)
                Text(producto.categoria ?? "")
                    .font(.caption)
            }
            Spacer()
        }
        .padding()
    }
}
