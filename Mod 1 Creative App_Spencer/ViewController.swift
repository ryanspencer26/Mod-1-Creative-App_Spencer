//
//  ViewController.swift
//  Mod 1 Creative App_Spencer
//
//  Created by RYAN SPENCER on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var prField: UITextField!
    
    @IBOutlet weak var repsField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: Any) {
        var pr = prField.text!
        var reps = repsField.text!
        
        var testPr = Double(pr) ?? 0
        var testReps = Double(reps) ?? 0
        
        var max: Double
        var mult: Double
        
        if(testPr == 0 || testReps == 0){
            outputLabel.text = "Invalid input"
            outputLabel.textColor = UIColor.systemRed
            outputLabel.isHidden = false
        } else {
            mult = 1.0 + ((testReps - 1) * 0.05)
            max = testPr * mult
            outputLabel.text = "Your max is \(max) lbs"
            outputLabel.textColor = UIColor.black
            outputLabel.isHidden = false
        }
        
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        
        prField.text = ""
        repsField.text = ""
        outputLabel.isHidden = true
        
    }
    
}
