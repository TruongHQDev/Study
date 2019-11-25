//
//  ViewController.swift
//  Demo2
//
//  Created by AUTO SERVER on 11/25/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtToShare: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBAction func onShareTapped(_ sender: Any) {
        let act = UIActivityViewController(activityItems: [txtToShare.text!], applicationActivities: nil)
        
        present(act, animated: true, completion: nil)
    }
}

