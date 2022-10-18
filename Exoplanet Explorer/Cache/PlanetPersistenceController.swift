import CoreData
import Foundation

class PlanetPersistenceController: ObservableObject {
    
    let container = NSPersistentContainer(name: "PlanetCoreDataModel")
    
    init(inMemory: Bool = false) {
        print("PlanetPersistenceController initialized")
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
