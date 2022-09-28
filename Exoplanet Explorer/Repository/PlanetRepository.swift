//
//  PlanetRepository.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import Foundation
import SwiftyJSON




class PlanetRepository {
    
    var apiService = ExoplanetApiService()
    var planetMapper = JsonPlanetMapper()

    
    func fetchPlanetsFromNetwork() {
        let jsonPlanetString = apiService.fetchPlanetsFromNetwork()
        convertJsonToPlanets(json: jsonPlanetString)
    }
    
    private func convertJsonToPlanets(json: JSON){
        var planetList = planetMapper.convertJsonToPlanets(json: json)
    }
    
    func checkAndInsertPlanetIntoCache(){
        
    }
    
    func searchPlanetsFromCache(){
        
    }
    
    func getAllPlanetsFromCache(){
        
    }
    
    func removePlanetsFromCache(){
        
    }
    
    
}

