//
//  ProductsViewModel.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import Foundation
import CoreData

class ProductsViewModel: ObservableObject {
    @Published var productos: [Producto] = []

    private let context = PersistenceController.shared.container.viewContext

    func fetchProductos() {
        let request: NSFetchRequest<Producto> = Producto.fetchRequest()
        
        do {
            productos = try context.fetch(request)
        } catch {
            print("Error al obtener productos: \(error.localizedDescription)")
        }
    }

    func addProduct(name: String, descripcion: String, price: Double, imageURL: String, linkAmazon: String, categoria: String) {
        let nuevoProducto = Producto(context: context)
        nuevoProducto.id = UUID()
        nuevoProducto.nombre = nombre
        nuevoProducto.descripcion = descripcion
        nuevoProducto.precio = precio
        nuevoProducto.imagenURL = imagenURL
        nuevoProducto.linkAmazon = linkAmazon
        nuevoProducto.categoria = categoria

        saveContext()
    }

    private func saveContext() {
        do {
            try context.save()
        } catch {
            print("Error al guardar el contexto: \(error.localizedDescription)")
        }
    }
}
