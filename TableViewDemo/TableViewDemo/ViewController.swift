//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Thukivakam,Sravanthi on 11/9/23.
//

import UIKit

class Product{
    var name:String?
    var category:String?
    
    init(name: String, category: String) {
        self.name = name
        self.category = category
    }
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Returns the number of products
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create the cell
        let cell=tableViewOutlet.dequeueReusableCell(withIdentifier: "resuableCell", for: indexPath)
        
        //Populate the cell
        cell.textLabel?.text=productsArray[indexPath.row].name
        
        //Return the cell
        return cell
        
    }
    

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var productsArray=[Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1=Product(name: "MacBookAir", category: "Laptop")
        let p2=Product(name: "iPhone", category: "Cell Phone")
        let p3=Product(name: "Airpods", category: "Accessories")
        let p4=Product(name: "iWatch", category: "Accessories")
        let p5=Product(name: "Charger", category: "Accessories")
        
        productsArray.append(p1)
        productsArray.append(p2)
        productsArray.append(p3)
        productsArray.append(p4)
        productsArray.append(p5)
        
        //We are making table view to self
        tableViewOutlet.delegate=self
        tableViewOutlet.dataSource=self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
                if transition == "productDetails"{
                    let destination = segue.destination as! ProductsDescriptionViewController
                    
                    destination.product = productsArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
                }
    }


}

