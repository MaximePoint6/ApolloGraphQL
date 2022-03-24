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
                        HStack {
                            AsyncImage(url: URL(string: launch.mission.missionPatch)){ image in
                                image.resizable()
                            } placeholder: {
                                Color.gray
                            }
                            .frame(width: 30, height: 30)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text(launch.mission.name)
                        }
                    }
                }
                .navigationTitle("SpaceX missions")
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(LaunchViewModel())
        }
    }
