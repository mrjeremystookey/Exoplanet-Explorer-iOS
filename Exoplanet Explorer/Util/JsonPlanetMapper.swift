import Foundation
import SwiftyJSON


class JsonPlanetMapper {
    
    init() {
        print("JsonPlanetMapper initialized")
    }
    
    func convertJsonToPlanets(json: JSON) -> [Planet] {
        var planetList = Array<Planet>()
        json.forEach { planet in
            //Use new Planet NSManagedObject class here 
            let planet = Planet(
                planetId: Int.init(planet.0.description)!,
                planetName: planet.1["pl_name"].stringValue,
                hostname: planet.1["hostname"].stringValue,
                discoveryYear: planet.1["disc_year"].intValue,
                planetaryOrbitPeriod: planet.1["pl_orbper"].doubleValue
            )
            planetList.append(planet)
        }
        print("JsonPlanetMapper: \(planetList.count) new Planet objects created")
        return planetList
    }
    
}
