//
//  DetailViewController.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieBackdropView: UIImageView!
    
    @IBOutlet weak var voterAverage: UILabel!
    @IBOutlet weak var voterCount: UILabel!
    
    
    @IBOutlet weak var popularityMovie: UILabel!
    
    @IBOutlet weak var movieDesc: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: movie.movieBackdrop, into: movieBackdropView)
        
        movieTitleLabel.text = movie.movieName
        voterAverage.text = movie.movieVoteavg
        voterCount.text = movie.movieVotecount
        popularityMovie.text = movie.moviePopularity
        movieDesc.text = movie.movieDescription

    }

}
