//
//  Movies.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

/**
 Entity used to represent the data being loaded in the `MoviesVC` collectionView.
 */
struct Movies: Codable {
    var results: [Movie]
}

/**
 Entity  that represents the`results` property from the entity `MovieList`
 */
struct Movie: Codable {
    var title: String
    var release_date: String
    var vote_average: Double
    var poster_path: String?
    var backdrop_path: String?
    var id: Int
}
