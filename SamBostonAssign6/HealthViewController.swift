//
//  HealthViewController.swift
//  SamBostonAssign6
//
//  Created by Boston, Samuel T. on 4/29/26.
//

import UIKit

class HealthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Google" {
            if let destinationVC = segue.destination as? WebsiteViewController {
                destinationVC.websiteURL = "https://www.Google.com"
            }
        }
        if segue.identifier == "Meds" {
            if let destinationVC = segue.destination as? WebsiteViewController {
                destinationVC.websiteURL = "https://www.Walgreens.com"
            }
        }
        if segue.identifier == "Clinic" {
            if let destinationVC = segue.destination as? WebsiteViewController {
                destinationVC.websiteURL = "https://www.baptisthealth.com"
            }
        }
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
