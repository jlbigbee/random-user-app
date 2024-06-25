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
      VStack {
        Text("Raw JSON Data:")
        ScrollView {
          Text(userData.users)
        }
      }
      .padding()
      .navigationTitle("Random Users")
    }
  }
}

#Preview {
    UsersView()
}
