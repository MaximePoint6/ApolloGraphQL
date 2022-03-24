//
//  LaunchCardView.swift
//  ApolloGraphQL
//
//  Created by Maxime Point on 24/03/2022.
//

import SwiftUI

struct LaunchCardView: View {
    
    var launch: Launches.Launch
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Launch ID: \(launch.id)")
            Text("Site: \(launch.site)")
            Text("Mission: \(launch.mission.name)")
            Text("")
            Text(launch.isBooked ? "Full" : "Places are still available")
            Text("")
            Text("Rocket: \(launch.rocket.name)")
            Text("Rocket Type: \(launch.rocket.type)")
            Spacer()
        }
        .navigationTitle(launch.mission.name)
        .frame(maxWidth: 300, alignment: .leading)
        .padding()
    }
}

struct LaunchCardView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            LaunchCardView(launch: previewLaunchData)
        }
    }
}
