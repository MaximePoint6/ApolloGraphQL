//
//  ContentView.swift
//  ApolloGraphQL
//
//  Created by Maxime Point on 24/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var launchViewModel: LaunchViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(launchViewModel.launches) { launch in
                    NavigationLink(destination: LaunchCardView(launch: launch)) {
                        Text(launch.mission.name)
                    }
                }
            }
            .navigationTitle("SpaceX rockets")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchViewModel())
    }
}
