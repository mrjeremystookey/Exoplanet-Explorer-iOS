import Foundation
import SwiftyJSON


//Class to retrieve JSON from Caltech API service
struct ExoplanetApiService {
        
    //Needs to be injected via DI
    var planetMapper = JsonPlanetMapper()
    
    init() {
        print("ExoplanetApiService initialized")
    }

        func fetchPlanetsFromNetwork() async -> [Planet] {
            print("fetching new planets from API")
            let url = URL(string: UrlConstants.TEST_URL)!.absoluteURL
            do {
                //Need to handle response abd error 
                let (data, _) = try await URLSession.shared.data(from: url)
                let planetsJson = try JSON(data: data)
                let planetsList = planetMapper.convertJsonToPlanets(json: planetsJson)
                print("ExoplanetApiService: # of planets: \(planetsJson.count)")
                return planetsList
            } catch{
                print(error)
            }
            return []
        }
}

