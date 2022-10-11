//
//  PlanetEntity+CoreDataProperties.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 10/11/22.
//
//

import Foundation
import CoreData


extension PlanetEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlanetEntity> {
        return NSFetchRequest<PlanetEntity>(entityName: "PlanetEntity")
    }

    @NSManaged public var planetId: Int64
    @NSManaged public var planetName: String?
    @NSManaged public var hostname: String?
    @NSManaged public var discoveryYear: String?
    @NSManaged public var planetaryOrbitPeriod: Double

}

extension PlanetEntity : Identifiable {

}
