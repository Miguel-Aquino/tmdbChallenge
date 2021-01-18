//
//  SelectedMovie.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

/**
 Entity  that represents the `SelectedMovie`
 */
struct SelectedMovie: Codable {
    var title: String
    var runtime: Int
    var release_date: String
    var vote_average: Double
    var genres: [Genre]
    var overview: String
}

/**
 Entity  that represents a single `Genre` property from the `genreList`
 */
struct Genre: Codable, Equatable {
    var id: Int
    var name: String
}
