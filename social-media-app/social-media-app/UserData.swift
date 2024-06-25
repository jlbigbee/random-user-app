//
//  UserData.swift
//  social-media-app
//
//  Created by Jonathan Bigbee on 6/25/24.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    @Published var users: [User] = []

  init() {
    Task {
      await loadUsers()
    }
  }

  func loadUsers() async {
    do {
      let users = try await UserFetchingClient.getUsers()
      self.users = users
    } catch {
      print(error)
    }
  }
}
