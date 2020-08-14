//
//  ViewController.swift
//  One Rep Max
//
//  Created by Jonathan Daniel on 8/14/20.
//  Copyright © 2020 Jonathan Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneRepMaxLabel: UILabel!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var repsLabel: UILabel!
    
    /*
     function updates repsLabel to slider value
     */
    @IBAction func repsSlider(_ sender: UISlider) {
        repsLabel.text = String(Int(sender.value))
    }
    
    /*
     function calculates one rep max and updates label
     */
    @IBAction func calculateMax(_ sender: UIButton) {
        let weight = Double(weightText.text!)
        let reps = Double(repsLabel.text!)
        
        // Brzycki formula
        let maxDecimal = weight! / ((37/36) - (1/36) * reps!)
        let maxRounded = round(maxDecimal)
        let maxInt = Int(maxRounded)
        
        oneRepMaxLabel.text = String(maxInt) + " lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do any additional setup after loading the view
    }


}

