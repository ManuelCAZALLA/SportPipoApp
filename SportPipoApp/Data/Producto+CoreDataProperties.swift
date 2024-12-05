//
//  Producto+CoreDataProperties.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 5/12/24.
//
//

import Foundation
import CoreData


extension Producto {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Producto> {
        return NSFetchRequest<Producto>(entityName: "Producto")
    }

    @NSManaged public var category: String?
    @NSManaged public var descripcion: String?
    @NSManaged public var id: UUID?
    @NSManaged public var imagenURL: String?
    @NSManaged public var linkAmazon: String?
    @NSManaged public var name: String?
    @NSManaged public var price: Double

}

extension Producto : Identifiable {

}
