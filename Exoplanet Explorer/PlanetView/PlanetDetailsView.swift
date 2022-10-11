import SwiftUI

struct PlanetDetailsView: View {
    let planet: Planet
    var body: some View {
        VStack{
            Text("Planet name: \(planet.planetName)")
            Text("Hostname: \(planet.hostname)")
            Text("Dummy Text")
            Text("Dummy Text")
            Text("Dummy Text")
        }
    }
}


struct PlanetDetailsViewPreviews: PreviewProvider {
    static var planet = Planet.sampleData[0]
    static var previews: some View {
        PlanetDetailsView(planet: planet)
            .background(Color.cyan)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
