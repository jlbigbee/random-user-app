//
//  social_media_appTests.swift
//  social-media-appTests
//
//  Created by Jonathan Bigbee on 6/25/24.
//

import XCTest
@testable import social_media_app

class RandomUsersTests: XCTestCase {
  func testUserModel() throws {
    let jsonData = getTestJSONData()

    do {
      _ = try JSONDecoder().decode(Response.self, from: jsonData)
    }
    catch {
      XCTFail("Failed to decode JSON into the model: \(error)")
    }
  }

  private func getTestJSONData() -> Data {
    guard let path = Bundle.main.path(forResource: "randomUsers",
                                      ofType: "json") else {
      fatalError("randomUsers.json file not found")
    }
    let internalURL = URL(fileURLWithPath: path)
    return try! Data(contentsOf: internalURL)
  }
}
