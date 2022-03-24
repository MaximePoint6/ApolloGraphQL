//
//  ApolloGraphQLApp.swift
//  ApolloGraphQL
//
//  Created by Maxime Point on 24/03/2022.
//

import SwiftUI

@main
struct ApolloGraphQLApp: App {
    
    @StateObject var launchViewModel = LaunchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(launchViewModel)
        }
    }
    
    
}
