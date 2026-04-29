//
//  WebsiteViewController.swift
//  SamBostonAssign6
//
//  Created by Boston, Samuel T. on 4/29/26.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var websiteURL:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let websiteURL = websiteURL,
              let url = URL(string: websiteURL) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
