//
//  PlanetCardView.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/23/22.
//

import SwiftUI

struct PlanetCardView: View{
    let planet: Planet
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Name: \(planet.planetName)")
                Text("Hostname: \(planet.hostname)")
            }
            Spacer()
            Text("year disc: \(planet.discoveryYear)")
        }
            .padding(10)
    }
}


struct PlanetCardViewPreviews:  PreviewProvider {
    static var planet = Planet.sampleData[0]
    static var previews: some View {
        PlanetCardView(planet: planet)
            .background(Color.cyan)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
