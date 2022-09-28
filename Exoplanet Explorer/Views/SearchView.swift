import SwiftUI

struct SearchView: View {
    @StateObject var viewModel = SearchViewModel()

    let planets: [Planet]
    var body: some View {
        
        VStack{
            List{
                ForEach(planets, id: \.planetName) { planet in
                    NavigationLink(destination: PlanetDetailsView(planet: planet)) {
                        PlanetCardView(planet: planet)
                            .padding(4)
                    }
                    .listRowBackground(Color.cyan)
                }
            }
            .navigationTitle("Planets")
            .onAppear{
                viewModel.fetchPlanetsFromNetwork()
            }
            .toolbar {
                          Button(action: {}) {
                              Image(systemName: "plus")
                          }
                          .accessibilityLabel("Search Planets")
                      }
        }

    }
}



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SearchView(planets: Planet.sampleData)
        }
    }
}
