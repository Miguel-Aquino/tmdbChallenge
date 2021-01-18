//
//  TrailerVC.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 17/01/21.
//

import UIKit
import WebKit

class TrailerVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var closeView: UIView!
    
    //MARK:- Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        setupVC()
        loadTrailer()
    }
}

extension TrailerVC {
    
    private func setupVC(){
        closeView.isHidden = false
        ViewProperties.configureCircularViewWithShadow(backgroundView: closeView)
        ViewProperties.animateBounceEffect(backgroundView: closeView)
    }
    
    func loadTrailer() {
        
        guard let trailerURL = URL(string: "https://www.youtube.com/embed/n9G5PlOaqWM") else { return }
        
        let request = URLRequest(url: trailerURL)
        
        webView.load(request)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
