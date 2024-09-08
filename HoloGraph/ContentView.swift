//
//  ContentView.swift
//  HoloGraph
//
//  Created by Eason on 9/7/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

import Foundation
import Apollo

//let apolloClient = ApolloClient(url: URL(string: "https://api.github.com/graphql")!)

let apolloClient: ApolloClient = {
    // The cache is necessary to set up the store, which we're going
    // to hand to the provider
    let cache = InMemoryNormalizedCache()
    let store = ApolloStore(cache: cache)
    
    let client = URLSessionClient()
    let provider = NetworkInterceptorProvider(store: store, client: client)
    let url = URL(string: "https://api.github.com/graphql")!
    
    let requestChainTransport = RequestChainNetworkTransport(
        interceptorProvider: provider,
        endpointURL: url
    )
    
    // Remember to give the store you already created to the client so it
    // doesn't create one on its own
    return ApolloClient(networkTransport: requestChainTransport, store: store)
}()

struct ContentView: View {
    @Environment(AppModel.self) private var appModel
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    

    var body: some View {
        @Bindable var appModel = appModel

        VStack {
            Text("Holo Graph")
            
            Text("Total Contributions: \(appModel.totalContributions ?? 0)")
            
            TextField("Github username", text: $appModel.userName)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                .padding()
            
            Button(action: {
                apolloClient.fetch(query: Github.GitHubUserDataQuery(userName: appModel.userName)) { result in
                    guard let data = try? result.get().data else { return }
                    
                    appModel.totalContributions = data.user?.contributionsCollection.contributionCalendar.totalContributions
                    
                    // Parse and store contribution data
                    if let weeks = data.user?.contributionsCollection.contributionCalendar.weeks {
                        appModel.contributionData = weeks.flatMap { week in
                            week.contributionDays.map { day in
                                AppModel.ContributionDay(
                                    date: day.date,
                                    contributionCount: day.contributionCount
                                )
                            }
                        }
                    }
                    
                    print("Total contributions: \(appModel.totalContributions ?? 0)")
                    print("Contribution data count: \(appModel.contributionData.count)")
                }
            }) {
                Text("Submit")
            }

            // Add this toggle button
            Toggle("Show Volumetric Window", isOn: Binding(
                get: { appModel.isVolumetricWindowVisible },
                set: { appModel.isVolumetricWindowVisible = $0 }
            ))
                .padding()
        }
        .padding()
        .onChange(of: appModel.isVolumetricWindowVisible) { _, isVisible in
            if isVisible {
                openWindow(id: "VolumetricWindow")
            } else {
                dismissWindow(id: "VolumetricWindow")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
