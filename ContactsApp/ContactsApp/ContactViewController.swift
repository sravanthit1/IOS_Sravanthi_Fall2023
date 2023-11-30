//
//  ResultViewController.swift
//  ContactsApp
//
//  Created by Sravanthi Thukivakam on 11/29/23.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var mobileOL: UILabel!
    
    @IBOutlet weak var emailOL: UILabel!
    
    var Name=""
    var Mobile=""
    var Email=""
    var Img=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOL.image=UIImage(named: Img)
        nameOL.text="\(Name)"
        mobileOL.text=mobileOL.text!+"\(Mobile)"
        emailOL.text=emailOL.text!+"\(Email)"
        
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
