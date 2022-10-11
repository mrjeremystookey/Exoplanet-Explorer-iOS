import Foundation
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
//        var planetPersistence = PlanetPersistence.init(inMemory: true)
//        var container = planetPersistence.container
        return []
    }
    
    //Checks if Planets have already been cached, if not, adds them to cache
    private func checkAndInsertPlanetIntoLocalCache(planetList: [Planet]) {
        print("updating local cache")
    }
}

