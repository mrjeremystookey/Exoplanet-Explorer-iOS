//
//  theme.swift
//  Exoplanet Explorer
//
//  Created by Jeremy Stookey on 9/23/22.
//

import SwiftUI

enum ExoplanetExplorerTheme: String {
    case Primary
    case PrimaryLight
    case PrimaryDark
    case Secondary
    case SecondaryLight
    case SecondaryDark

    case Gray

    
    
    var mainColor: Color{
        Color(rawValue)
    }
    
}
