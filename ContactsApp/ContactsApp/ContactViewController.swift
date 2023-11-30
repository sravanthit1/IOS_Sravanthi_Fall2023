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
       // imageOL.image=UIImage(named: Img)
        nameOL.text="\(Name)"
        mobileOL.text=mobileOL.text!+"\(Mobile)"
        emailOL.text=emailOL.text!+"\(Email)"
        updateAndAnimate(Img)
        
    }
    
    func updateAndAnimate(_ imageName : String){
                    var width = imageOL.frame.width
                    width += 40
                    var height = imageOL.frame.height
                    height = height + 40
                    let x  =  imageOL.frame.origin.x-20
                    let y = imageOL.frame.origin.y-20
                    let largeFrame = CGRect(x: x, y: y, width: width, height: height)
                    UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                        self.imageOL.frame = largeFrame
                        self.imageOL.image = UIImage(named:imageName)
                    })
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
