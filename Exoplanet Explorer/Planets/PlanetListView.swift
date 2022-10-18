import SwiftUI

struct PlanetListView: View {
    

//    @FetchRequest(sortDescriptors: []) var coreDataPlanets: FetchedResults<PlanetEntity>
    
    
    @StateObject private var viewModel = PlanetListViewModel()
    
    var body: some View {
        ZStack {
            if viewModel.isRefreshing {
                ProgressView()
            } else {
                List{
                    ForEach(viewModel.planets, id: \.planetName) { planet in
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
            PlanetListView()
        }
    }
}
