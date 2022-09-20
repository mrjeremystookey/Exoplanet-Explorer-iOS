//
//  ExoplanetApiService.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import Foundation


//Class to retrieve JSON from Caltech API service

protocol ExoplanetApiServiceProtocol{
    func fetchPlanetsFromNetwork(completion: (Planet) -> Void)
}

class ExoplanetApiService{
    func fetchPlanetsFromNetwork(completion: (Planet) -> Void){
        
    }
}
