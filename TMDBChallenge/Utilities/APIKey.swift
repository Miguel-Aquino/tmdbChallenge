//
//  APIKey.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

/**
 Entity used to represent the `APIKey` to read from the `key-info.plist`
 */
struct APIKey: Codable {
    var api_key: String
}
