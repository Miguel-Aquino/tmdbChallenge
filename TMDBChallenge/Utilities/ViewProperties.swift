//
//  ViewProperties.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 15/01/21.
//

import UIKit

class ViewProperties {
    static func configureCircularViewWithShadow(backgroundView: UIView ){
        backgroundView.layer.shadowColor = UIColor.black.cgColor
        backgroundView.layer.shadowOpacity = 0.7
        backgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
        backgroundView.layer.shadowRadius = 5
        backgroundView.layer.shouldRasterize = false
        backgroundView.layer.cornerRadius = backgroundView.frame.height / 2
    }
    
    static func configureViewWithRoundBorderAndShadow(backgroundView: UIView ){
        backgroundView.layer.shadowColor = UIColor.black.cgColor
        backgroundView.layer.shadowOpacity = 0.4
        backgroundView.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundView.layer.shadowRadius = 3
        backgroundView.layer.shouldRasterize = false
        backgroundView.layer.cornerRadius = 8
    }
}
