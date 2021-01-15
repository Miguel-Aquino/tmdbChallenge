//
//  SelectedMovieVC.swift
//  TMDBChallenge
//
//  Created by Miguel Aquino on 15/01/21.
//

import UIKit

class SelectedMovieVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var genresLabel: UILabel!
    @IBOutlet weak var summaryView: UIView!
    @IBOutlet weak var summaryTextView: UITextView!
    @IBOutlet weak var closeButtonView: UIView!
    @IBOutlet weak var favoritesView: UIView!
    @IBOutlet weak var favoritesLabel: UILabel!
    @IBOutlet weak var posterLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var posterTrailingConstraint: NSLayoutConstraint!
    
    //MARK: - Properties
    static let reuseId = "SelectedMovieVC"
    var movieId: Int?
    var viewModel: SelectedMovieViewModel?
    var backdropUrl: String?
    
    //MARK:- LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVC()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loadMovieDetails()
    }
}

//MARK: VC Extension, Methods and Actions
extension SelectedMovieVC {
    
    private func setupVC() {
        ViewProperties.configureCircularViewWithShadow(backgroundView: closeButtonView)
        ViewProperties.configureViewWithRoundBorderAndShadow(backgroundView: favoritesView)
        if UIDevice.current.userInterfaceIdiom == .pad {
            posterLeadingConstraint.constant = self.view.bounds.width / 3
            posterTrailingConstraint.constant = self.view.bounds.width / 3
        }
        posterImageView.contentMode = .scaleAspectFill
    }
    
    private func loadMovieDetails(){
        guard let movieId = movieId else { return }
        guard let currentLanguage = UserDefaults.standard.string(forKey: "app_lang")  else { return }
        
        MovieService.shared.getSelectedMovie(movieId: movieId, language: currentLanguage) { [weak self] response in
            guard let self = self else { return }
            
            switch response {
            case .success(let movieDetails):
                DispatchQueue.main.async {
                    self.viewModel = SelectedMovieViewModel(movieDetails)
                    
                    self.titleLabel.text = self.viewModel?.title
                    self.runtimeLabel.text = self.viewModel?.runtimeInMinutes
                    self.yearLabel.text = self.viewModel?.yearOfRelease
                    self.scoreLabel.text = self.viewModel?.score
                    self.summaryTextView.text = self.viewModel?.overview
                    self.genresLabel.text = self.viewModel?.allGenres
                }
            case .failure: break
            }
        }
        
        guard let posterURL = backdropUrl else { return }
        MovieService.shared.getImage(from: posterURL, completed: { image in
            DispatchQueue.main.async {
                self.favoritesView.isHidden = false
                self.posterImageView.image = image != nil ? image : Images.emptyImage
            }
        })
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
