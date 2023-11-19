//
//  MoviesViewController.swift
//  Thukivakam_Movies
//
//  Created by Sravanthi Thukivakam on 11/18/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MovieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               //create a cell
               let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
               
               //populate the cell
               cell.assignMovie(with: MovieList[indexPath.row])
               
               //return the cell
               return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text="Movie Name: \(MovieList[indexPath.row].title)"
        movieRatingLabel.text="Movie Rating: \(MovieList[indexPath.row].movieRating)"
        movieBoxOfficeLabel.text="Box Office Collection: \(MovieList[indexPath.row].boxOffice)"
        movieYearLabel.text="Movie Released Year: \(MovieList[indexPath.row].releasedYear)"
        moviePlotLabel.text="Plot: \(MovieList[indexPath.row].moviePlot)"
        var str:[String]=MovieList[indexPath.row].cast
        var ans=""
        for actor in str {
            ans += actor + ", "
        }
        movieCastLabel.text="Cast: \(ans)"
        
       }

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var MovieList:[Movie] = []
    var genrename=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = genrename
        movieCollectionView.dataSource=self
        movieCollectionView.delegate=self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
