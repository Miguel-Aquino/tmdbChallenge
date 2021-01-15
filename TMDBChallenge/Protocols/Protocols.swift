//
//  Protocols.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 14/01/21.
//

import Foundation

protocol LanguageDelegate{
    func chooseLanguage()
}

protocol MovieSegmentDelegate {
    func loadMovie(movieType: MovieType)
}
