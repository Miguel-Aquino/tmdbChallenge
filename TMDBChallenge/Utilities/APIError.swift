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
            return "error.unknown".localized
        case .invalidURL:
            return "error.invalidURL".localized
        case .invalidResponse:
            return "error.response".localized
        case .invalidData:
            return "error.data".localized
        case .decodeError:
            return "error.decode".localized
        }
    }
}
