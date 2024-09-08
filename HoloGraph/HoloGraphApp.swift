//
//  HoloGraphApp.swift
//  HoloGraph
//
//  Created by Eason on 9/7/24.
//

import SwiftUI

@main
struct HoloGraphApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.mixed), in: .mixed)

        // Add this WindowGroup for the volumetric window
        WindowGroup(id: "VolumetricWindow", for: Bool.self) { $isPresented in
            VolumetricView()
                .environment(appModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.5, height: 0.5, depth: 0.5, in: .meters)
    }
}
