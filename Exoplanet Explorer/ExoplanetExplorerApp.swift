import SwiftUI

@main
struct ExoplanetExplorerApp: App {
    
    
    @StateObject private var viewModel = PlanetListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                PlanetListView(planets: viewModel.planets)
            }
        }
    }
}
