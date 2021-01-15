//
//  APIError.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

/**
 Enum used to represent errors from the API
 */
enum APIError: Error {
    case unknownError
    case invalidURL
    case invalidResponse
    case invalidData
    case decodeError
    
    var localizedDescription : String{
        switch self {
        case .unknownError:
            return "Unknown error occurred"
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid response from the server"
        case .invalidData:
            return "Invalid data received from the server"
        case .decodeError:
            return "Error decoding data"
        }
    }
}
