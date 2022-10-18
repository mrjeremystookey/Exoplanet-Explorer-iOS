//
//  Planet.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/16/22.
//

import Foundation


struct Planet {
    var planetId: Int
    var planetName: String
    var hostname: String
    var discoveryYear: Int
    var planetaryOrbitPeriod: Double? = nil

    
    //    var isPlanetControversial: Int? = nil
    //    var discoveryMethod: String? = nil
    //    var discoveryLocale: String? = nil
    //    var discoveryFacility: String? = nil
    //    var discoveryInstrument: String? = nil
    //    var discoveryTelescope: String? = nil
    //    var discoveryReference: String? = nil
    //    var discoveryPublicationDate: String? = nil
    //    var systemStarNumber: String? = nil
    //    var systemPlanetNumber: String? = nil
    //    var systemMoonNumber: String? = nil
    //    var orbitsInBinarySystem: Int? = nil
    //    var planetaryOrbitPeriod: Double? = nil
    //    var planetaryRadiusEarth: Double? = nil
    //    var planetaryMassEarth: Double? = nil
    //    var planetaryMassJupiter: Double? = nil
    //    var planetaryOrbitalEccentricity: Double? = nil
    //    var planetaryOrbitalInclination: Double? = nil
    //    var radialVelocityVariationsFlag: Int? = nil
    //    var hostStarPulsarTimingVariationsFlag: Int? = nil
    //    var hostStarPulsationTimingFlag: Int? = nil
    //    var transitsHostStarFlag: Int? = nil
    //    var hostStarAstronomicalVariationsFlag: Int? = nil
    //    var exhibitsOrbitalModulationsOnPhaseCurve: Int? = nil
    //    var planetActedAsLens: Int? = nil
    //    var eclipseTimingVariations: Int? = nil
    //    var observedViaImagingTechniques: Int? = nil
    //    var inferredDueToKinematicInfluence: Int? = nil
    //    var orbitalPeriodReference: String? = nil
    //    var orbitSemiMajorAxis: Double? = nil
    //    var orbitSemiMajorAxisReference: String? = nil
    //    var planetaryRadiusEarthReference: String? = nil
    //    var planetDensity: String? = nil
    //    var planetDensityReference: String? = nil
    //    var planetaryMassEarthReference: String? = nil
    //    var planetaryTransitMidpoint: Double? = nil
    //    var planetaryTransitMidpointReference: String? = nil
    //    var planetaryRadiusJupiter: Double? = nil
    //    var planetaryRadiusJupiterReference: String? = nil
    //    var planetaryMassJupiterReference: String? = nil
    //    var planetaryOrbitalEccentricityReference: String? = nil
    //    var planetaryInsolationFlux: Double? = nil
    //    var planetaryInsolationFluxReference: String? = nil
    //    var planetaryEquilibriumTemperature: Double? = nil
    //    var planetaryEquilibriumTemperatureReference: String? = nil
    

}

extension Planet {
    static let sampleData: [Planet] =
    [
        Planet(planetId: 1, planetName: "Wasp-96b", hostname: "Wasp Nest", discoveryYear: 1996),
        Planet(planetId: 2, planetName: "Jeremy's World", hostname: "The imaginaton", discoveryYear: 2022)
    ]
}
