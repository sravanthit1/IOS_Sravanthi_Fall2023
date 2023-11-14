//
//  ResultViewController.swift
//  sampleApp
//
//  Created by Sravanthi Thukivakam on 11/13/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    var BMI=0.0
    var IMAGE=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultOL.text=String(BMI)
        updateAndAnimate(IMAGE)
        
    }
    func updateAndAnimate(_ imageName : String){
        var width = imageDisplay.frame.width
                width += 40
                var height = imageDisplay.frame.height
                height = height + 40
                var x  =  imageDisplay.frame.origin.x-20
                var y = imageDisplay.frame.origin.y-20
                var largeFrame = CGRect(x: x, y: y, width: width, height: height)
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageDisplay.frame = largeFrame
                    self.imageDisplay.image = UIImage(named:imageName)
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
