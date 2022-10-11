//
//  Exoplanet_ExplorerApp.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import SwiftUI

@main
struct Exoplanet_ExplorerApp: App {
    
    
    @StateObject private var viewModel = PlanetListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                PlanetListView(planets: viewModel.planets)
            }
        }
    }
}
