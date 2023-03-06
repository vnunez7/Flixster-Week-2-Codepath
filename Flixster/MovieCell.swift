//
//  MovieCell.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/4/23.
//

import Nuke
import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    
    
    //movieImageView
    //movieTitle
    //movieDescription
    
    
    func configure(with movie: Movie) {
        movieTitle.text = movie.movieName
        movieDescription.text = movie.movieDescription

        Nuke.loadImage(with: movie.artworkUrl100, into: movieImageView)
    }
    
}
