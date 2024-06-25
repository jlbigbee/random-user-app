//
//  UsersView.swift
//  social-media-app
//
//  Created by Jonathan Bigbee on 6/25/24.
//

import SwiftUI

struct UsersView: View {
  @StateObject var userData = UserData()

  var body: some View {
    NavigationView {
      List(userData.users) { user in
        Text(user.fullName)
      }
      .navigationTitle("Random Users")
    }
  }
}

#Preview {
    UsersView()
}
