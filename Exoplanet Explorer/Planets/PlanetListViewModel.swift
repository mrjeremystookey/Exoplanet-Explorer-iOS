import Foundation
import SwiftyJSON
import SwiftUI

extension PlanetListView {
    
    
    
    @MainActor final class PlanetListViewModel: ObservableObject {

        //Needs to be Injected via DI
        private var repository = PlanetRepository()

        @Published var planets: [Planet] = []
        @Published private(set) var isRefreshing = false

        
        init() {
            print("PlanetListViewModel initialized")
            getPlanetsFromNetwork()
        }

        private func getPlanetsFromNetwork(){
            Task{
                isRefreshing = true
                let retrievedPlanets = await repository.fetchPlanetsFromNetwork()
                print("SearchViewModel: # of planets: \(retrievedPlanets.count)")
                if(!retrievedPlanets.isEmpty){
                    DispatchQueue.main.async {
                        self.isRefreshing = false
                        self.planets = retrievedPlanets
                    }
                } else {
                    print("SearchViewModel: no planets found")
                    planets = []
                }
            }
            
        }
        
        
        
    }
}





    

