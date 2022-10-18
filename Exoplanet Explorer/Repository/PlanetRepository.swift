import Foundation
import CoreData
import SwiftyJSON




class PlanetRepository {
    
    //Needs to be injected via DI
    var apiService = ExoplanetApiService()
    

    init() {
        print("PlanetRepository initialized")
    }
    
    
    func fetchPlanetsFromNetwork() async -> [Planet] {
        let planets = await apiService.fetchPlanetsFromNetwork()
        print("PlanetRepository: # of planets: \(planets.count)")
        return planets
    }
    
    
    //Retrieves all local planets saved to Datastore
    func getPlanetsFromLocalCache() -> [Planet] {

        return []
    }
    

}

