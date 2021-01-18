//
//  Trailers.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 17/01/21.
//

import Foundation

/**
 Entity used to represent the trailers
 */
struct Trailers: Codable {
    var results: [Trailer]
}

/**
 Entity  that represents the`results` property from the entity `Trailers`
 */
struct Trailer: Codable {
    var id: String
    var key: String
}
