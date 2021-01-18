//
//  MoviesVMTests.swift
//  TMDBChallengeTests
//
//  Created by Miguel Aquino on 17/01/21.
//

import XCTest
@testable import TMDBChallenge

class MoviesVMTests: XCTestCase {
    
    //MARK: - Properties
    
    private var movie: Movie!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Test lifecycle
    
    override func setUp() {
        movie = Movie(title: "Inception",
                      release_date: "2010",
                      vote_average: 9.0,
                      poster_path: "poster.url.com",
                      backdrop_path: "backdrop.url.com",
                      id: 123456)
    }
    
    func testMovieViewModel() {
        let viewModel = MoviesViewModel(movie)
        
        XCTAssertEqual(movie.id, viewModel.id)
        XCTAssertEqual(movie.release_date, viewModel.release_date)
        XCTAssertEqual(movie.vote_average, viewModel.vote_average)
        XCTAssertEqual(movie.poster_path, viewModel.poster_path)
        XCTAssertEqual(movie.backdrop_path, viewModel.backdrop_path)
        XCTAssertEqual(movie.title, viewModel.title)
    }
    
    func testMoviePosterURL(){
        let movieVM = MoviesViewModel(movie)
        let mockPosterURL = ApiURL.image + "w342/\(movie.poster_path!)"
        
        XCTAssertEqual(mockPosterURL, movieVM.posterURL)
    }
    
    func testMovieBackdropURL(){
        let movieVM = MoviesViewModel(movie)
        let mockBackdropURL = ApiURL.image + "original/\(movie.backdrop_path!)"
        
        XCTAssertEqual(mockBackdropURL, movieVM.backdropURL)
    }
    
}
