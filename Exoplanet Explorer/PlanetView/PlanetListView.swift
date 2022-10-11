import SwiftUI

struct PlanetListView: View {
    
    @StateObject var viewModel = PlanetListViewModel()

    let planets: [Planet]
    var body: some View {
        
        ZStack{
            if viewModel.isRefreshing {
                ProgressView()
            } else {
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
                .toolbar {
                              Button(action: {}) {
                                  Image(systemName: "plus")
                              }
                              .accessibilityLabel("Search Planets")
                          }
            }

        }

    }
}



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlanetListView(planets: Planet.sampleData)
        }
    }
}
