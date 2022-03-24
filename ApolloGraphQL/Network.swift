//
//  Network.swift
//  ApolloGraphQL
//
//  Created by Maxime Point on 24/03/2022.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

    let url = "https://apollo-fullstack-tutorial.herokuapp.com/graphql" // Udapte this link with your API link

    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
