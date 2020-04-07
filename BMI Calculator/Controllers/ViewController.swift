//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightV: UISlider!
    @IBOutlet weak var weightV: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //var heightV = Float()
        
        heightValue.text = String(format: "%.2f", sender.value) + "in"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
         weightValue.text = "\(Int(sender.value))kgs"
    }
    
    @IBAction func calBtn(_ sender: UIButton) {
        let height = heightV.value
        let weight = weightV.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult" , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destVC = segue.destination as! ResultsViewController
            destVC.bmiValue = calculatorBrain.getBMIValue()
            destVC.bmiAdvice = calculatorBrain.getAdvice()
            destVC.backColor = calculatorBrain.getColor()
        } 
    }
    
}

