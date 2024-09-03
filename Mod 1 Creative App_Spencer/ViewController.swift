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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: Any) {
        var pr = prField.text!
        var reps = prField.text!
        
        var testPr = Int(pr) ?? 0
        var testReps = Int(reps) ?? 0
        
        if(testPr == 0 || testReps == 0){
            //display error message
        }
        
    }
    
}
