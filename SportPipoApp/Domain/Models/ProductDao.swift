//
//  ProductDao.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 7/12/24.
//

import CoreData

@objc(ProductDAO)
public class ProductDAO: NSManagedObject {}

extension ProductDAO {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProductDAO> {
        return NSFetchRequest<ProductDAO>(entityName: "ProductDAO")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var price: Double
    @NSManaged public var descripcion: String?
    @NSManaged public var category: String?
    @NSManaged public var imageName: String?
    @NSManaged public var linkAmazon: String?
}
