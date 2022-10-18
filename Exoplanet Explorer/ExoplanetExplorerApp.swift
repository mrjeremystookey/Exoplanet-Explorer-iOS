import SwiftUI

@main
struct ExoplanetExplorerApp: App {
        
//    @StateObject private var dataController = PlanetPersistenceController()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                PlanetListView()
//                    .environment(\.managedObjectContext, dataController.container.viewContext)
            }
        }
    }
}
