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
        VStack(alignment: .center) {
            AsyncImage(url: URL(string: launch.mission.missionPatch)){ image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: 80, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 20))
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
