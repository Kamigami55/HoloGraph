//
//  AppModel.swift
//  HoloGraph
//
//  Created by Eason on 9/7/24.
//

import SwiftUI

/// Maintains app-wide state
@MainActor
@Observable
class AppModel {
    let immersiveSpaceID = "ImmersiveSpace"
    enum ImmersiveSpaceState {
        case closed
        case inTransition
        case open
    }
    var immersiveSpaceState = ImmersiveSpaceState.closed
    
    // Add this line
    var isVolumetricWindowVisible = false
    
    var totalContributions: Int?
}
