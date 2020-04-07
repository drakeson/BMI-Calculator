//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Dr.Drake on 4/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var info: UILabel!
    var bmiValue: String?
    var bmiAdvice: String?
    var backColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        bmi.text = bmiValue
        info.text = bmiAdvice
        view.backgroundColor = backColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         
//    }
    

}
