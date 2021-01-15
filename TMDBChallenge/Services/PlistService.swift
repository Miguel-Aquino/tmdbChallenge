//
//  PlistService.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

class PlistService {
    /**
     Function used to read the keys from the `key-info.plist`
     */
    static func getPlistKey(key: PlistKey) -> String {
        guard let path = Bundle.main.path(forResource: "key-info", ofType: "plist"),
              let xml = FileManager.default.contents(atPath: path)
        else { return "" }
        
        switch key {
        case .apiKey:
            guard let apiKey = try? PropertyListDecoder().decode(APIKey.self, from: xml) else { return "" }
            return apiKey.api_key
        }
    }
}

enum PlistKey {
    case apiKey
}
