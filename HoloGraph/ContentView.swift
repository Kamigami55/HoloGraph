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
    @State var userName: String = ""
    @State var totalContributions: Int? = nil

    var body: some View {
        VStack {
            Text("Holo Graph")
            
            Text("Total Contributions: \(totalContributions ?? 0)")
            // A input field to type Github username and a submit button
            TextField("Github username", text: $userName)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                .padding()
            
            // Submit button
            Button(
action: {
                apolloClient.fetch(query: Github.GitHubUserDataQuery(userName: userName)) { result in
                    guard let data = try? result.get().data else { return }
                    
                    totalContributions = data.user?.contributionsCollection.contributionCalendar.totalContributions
                    print(totalContributions!)
                }
            }) {
                Text("Submit")
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
