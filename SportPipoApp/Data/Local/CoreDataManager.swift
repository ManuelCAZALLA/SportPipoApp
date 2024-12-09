//
//  CoreDataManager.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 7/12/24.
//

import CoreData

class CoreDataManager {
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext = CoreDataStack.shared.viewContext) {
        self.context = context
    }

    func saveProduct(product: ProductModel) {
        let productEntity = Product(context: context)
        productEntity.name = product.name
        productEntity.price = product.price
        productEntity.descripcion = product.descripcion
        productEntity.category = product.category
        productEntity.imageName = product.imageName 
        productEntity.linkAmazon = product.linkAmazon

        do {
            try context.save()
        } catch {
            print("Error al guardar producto: \(error)")
        }
    }

    func fetchProducts() -> [ProductModel] {
        let fetchRequest = NSFetchRequest<Product>(entityName: "Product")

        do {
            let products = try context.fetch(fetchRequest)
            return products.map { productEntity in
                ProductModel(
                    name: productEntity.name ?? "",
                    price: productEntity.price,
                    descripcion: productEntity.descripcion,
                    category: productEntity.category ?? "",
                    imageName: productEntity.imageName ?? "",
                    linkAmazon: productEntity.linkAmazon ?? ""
                )
            }
        } catch {
            print("Error al cargar productos: \(error)")
            return []
        }
    }


    func deleteAllProducts() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

        do {
            try context.execute(batchDeleteRequest)
        } catch {
            print("Error al borrar productos: \(error)")
        }
    }
}
