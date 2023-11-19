//
//  ViewController.swift
//  Thukivakam_Movies
//
//  Created by Sravanthi Thukivakam on 11/18/23.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row].category
        return cell
    }
    

    @IBOutlet weak var genreTableView: UITableView!
     var genres=domains_Array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Movie App"
        
        genreTableView.dataSource = self;
        genreTableView.delegate = self;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
                    let destination = segue.destination as! MoviesViewController
            destination.genrename = genres[(genreTableView.indexPathForSelectedRow?.row)!].category
            destination.MovieList = genres[(genreTableView.indexPathForSelectedRow?.row)!].movies
        }
    }


}

