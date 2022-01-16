//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Katellyn Hyker on 1/12/22.
//  Copyright © 2022 Katellyn Hyker. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
