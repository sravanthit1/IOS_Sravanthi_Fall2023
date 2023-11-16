//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Thukivakam,Sravanthi on 11/16/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        //populate the cell
        cell.assignMovie(with: movies[indexPath.row])
        
        //return the cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text="Title: \(movies[indexPath.row].title)"
    }

    
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOL.dataSource=self
        collectionViewOL.delegate=self
        
        
    }


}

