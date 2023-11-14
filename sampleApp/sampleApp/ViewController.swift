//
//  ViewController.swift
//  sampleApp
//
//  Created by Sravanthi Thukivakam on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    var images=["img1","img2","img3"]
    var bmi=0.0
    var img=""
    
    @IBAction func CalculateBMI(_ sender: Any) {
        var h=Double(heightOL.text!)
        var w=Double(weightOL.text!)
       var val=(w!/(h!*h!))
        
        //for one precision val
        bmi = round(val * pow(10.0, Double(1))) / pow(10.0, Double(1))
        if(bmi<18.5){
            img=images[0]
        }else if(bmi>=18.5 && bmi<=24.9){
            img=images[1]
        }else if(bmi>=25 && bmi<=29.9){
            img=images[2]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "resultsegue"{
            var destination = segue .destination as! ResultViewController
            destination.BMI=bmi
            destination.IMAGE=img
        }
    }
    
    


}

