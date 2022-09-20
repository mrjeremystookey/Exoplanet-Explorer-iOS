//
//  PlanetRepository.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import Foundation


protocol PlanetRepositoryProtocol {
    func fetchAllPlanetsFromCache(completion: (Planet) -> Void)

}


class PlanetRepository {
    func callAPI(){
        let defaultSession = URLSession(configuration: .default)
        var dataTask: URLSessionDataTask?
        dataTask?.cancel()
        dataTask = defaultSession.dataTask(with: URL(string: UrlConstants.ALL_PLANETS_URL)!){
            [weak self] data, response, error in
            defer {
                self?.dataTask = nil
                if let error = error {
                    self?.errorMessage += "dataTask Error: " + error.localizedDescription + "\n"
                    
                } else if
                    let data = data,
                    let response = response as? HTTPURLResponse,
                    response.statusCode == 200{
                    self?.updateSearchResults(data)
                    DispatchQueue.main.async {
                        completion(self?.tracks, self?.errorMessage ?? "")
                    }
                }
            }
            dataTask?.resume()
        }
    }
}

