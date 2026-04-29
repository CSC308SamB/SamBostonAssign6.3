//
//  VideoViewController.swift
//  SamBostonAssign6
//
//  Created by Boston, Samuel T. on 4/29/26.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {

    func playVideo(url: URL) {
        let player = AVPlayer(url: url)
        let playerVC = AVPlayerViewController()
        playerVC.player = player
        
        present(playerVC, animated: true) {
            player.play()
        }
    }
    
    @IBAction func exerciseButton(_ sender: Any) {
        if let url = Bundle.main.url(forResource: "Exercise", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("Exercise.mp4 not found")
        }
    }
    
    @IBAction func mealButton(_ sender: Any) {
        if let url = Bundle.main.url(forResource: "Meals", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("Exercise.mp4 not found")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
