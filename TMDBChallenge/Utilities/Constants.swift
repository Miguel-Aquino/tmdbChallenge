//
//  Constants.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import UIKit



struct Keys {
    static let API_KEY = "api_key"
    static let LANGUAGE = "language"
}

struct ApiURL {
    static let baseURL = "https://api.themoviedb.org/3/movie/"
    static let selectedMovie = baseURL
    static let image = "https://image.tmdb.org/t/p/"
}

struct Images {
    static let emptyImage = UIImage(named: "empty_image")
    static let back = UIImageView(image: UIImage(named: "back_white"))
}

enum MovieType {
    case nowPlaying
    case topRated
    case popular
    
    var value : String {
        switch self {
        case .nowPlaying:
            return "now_playing"
        case .topRated:
            return "top_rated"
        case .popular:
            return "popular"
        }
    }
}
