//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Thukivakam,Sravanthi on 11/16/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageOL: UIImageView!
    func assignMovie(with movie:Movie){
        imageOL.image=movie.image
        
    }
}
