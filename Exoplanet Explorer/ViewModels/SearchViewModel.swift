//
//  SearchViewModel.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import Foundation
import SwiftyJSON


class SearchViewModel: ObservableObject {
    @Published var planets: [Planet] = []
    @Published var jsonString = JSON("Test String")
    
    var repository = PlanetRepository()

    
    func fetchPlanetsFromNetwork(){
        var planetJson = repository.fetchPlanetsFromNetwork()
    }

    
}

