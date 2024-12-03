//
//  Model.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 3/12/24.
//

import Foundation
import CoreData

extension Producto: Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Producto> {
        return NSFetchRequest<Producto>(entityName: "Producto")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String
    @NSManaged public var descripcion: String
    @NSManaged public var price: Double
    @NSManaged public var imageURL: String
    @NSManaged public var linkAmazon: String
    @NSManaged public var categoria: String
}
