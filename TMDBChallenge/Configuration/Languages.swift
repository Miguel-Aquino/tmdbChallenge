//
//  Languages.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

extension String {
    var localized: String {
        if let _ = UserDefaults.standard.string(forKey: "app_lang") {} else {
            // we set a default, just in case
            UserDefaults.standard.set("es", forKey: "app_lang")
            UserDefaults.standard.synchronize()
        }
        
        let lang = UserDefaults.standard.string(forKey: "app_lang")
        if let path = Bundle.main.path(forResource: lang, ofType: "lproj"),
           let bundle = Bundle(path: path) {
            return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
        }

        return NSLocalizedString(self, tableName: nil, bundle: Bundle(), value: "", comment: "")
    }
}
