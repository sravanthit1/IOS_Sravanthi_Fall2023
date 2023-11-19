//
//  MovieCollectionViewCell.swift
//  Thukivakam_Movies
//
//  Created by Sravanthi Thukivakam on 11/18/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    func assignMovie(with movie:Movie){
        imageOL.image=movie.image
    }
}
