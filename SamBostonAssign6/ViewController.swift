//
//  ViewController.swift
//  SamBostonAssign6
//
//  Created by Boston, Samuel T. on 4/21/26.
//

import UIKit

class ViewController: UIViewController {
    
    var curGender: String?
    var height: Double = 0
    var weight: Double = 0
    @IBOutlet weak var man: UIButton!
    @IBOutlet weak var woman: UIButton!
    
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var heightAmount: UITextField!
    @IBOutlet weak var weightAmount: UITextField!
    @IBAction func computeButton(_ sender: Any) {
        guard let heightText = heightAmount.text,
                  !heightText.isEmpty,
                  let height = Double(heightText),
                  height > 0 else {
                BMILabel.text = "Enter valid height"
                return
            }
        guard let weightText = weightAmount.text,
              !weightText.isEmpty,
              let weight = Double(weightText) else {
            BMILabel.text = "Enter valid weight"
            return
        }

        let bmi = weight / (height * height * 0.0001)
        switch bmi{
        case 0...18.4:
            BMILabel.text = "\(bmi): Underweight"
        case 18.5...24.9:
            BMILabel.text = "\(bmi): Normal Weight"
        case 25...29.9:
            BMILabel.text = "\(bmi): Overweight"
        case 30...:
            BMILabel.text = "\(bmi): Obese"
        default:
            BMILabel.text = "Invalid Numbers"
            break
        }
    }
    
    @IBAction func BMIswitch(_ sender: UISwitch) {
        if sender.isOn {
            BMILabel.isHidden = false
        } else {
            BMILabel.isHidden = true
        }
    }
    @IBAction func womanButton(_ sender: Any) {
        man.backgroundColor = .lightGray
        woman.backgroundColor = .green
        curGender = "Woman"
        print(curGender!)
    }
    
    @IBAction func msnButton(_ sender: Any) {
        man.backgroundColor = .green
        woman.backgroundColor = .lightGray
        curGender = "Man"
        print(curGender!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

