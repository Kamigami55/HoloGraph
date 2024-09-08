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
    
    var isVolumetricWindowVisible = false
    
    var userName: String = ""
    var totalContributions: Int?

    struct ContributionDay {
        let date: String  // Changed from Date to String
        let contributionCount: Int
    }

    var contributionData: [ContributionDay] = []
}
