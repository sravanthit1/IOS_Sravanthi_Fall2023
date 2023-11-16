//
//  ProductsDescriptionViewController.swift
//  TableViewDemo
//
//  Created by Thukivakam,Sravanthi on 11/9/23.
//

import UIKit

class ProductsDescriptionViewController: UIViewController {

    @IBOutlet weak var displayDescriptionOL: UILabel!
    
    var product:Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        displayDescriptionOL.text = "The product name is \((product?.name)!) is of \((product?.category)!) category."
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
