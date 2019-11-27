//
//  VC2ViewController.swift
//  Demo4
//
//  Created by AUTO SERVER on 11/27/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit
import WebKit


class VC2ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myWebView.delegate = self
        let urlString = "https://www.google.com.vn/"
        
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        myWebView.loadRequest(request)
        
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
