//
//  VC2ViewController.swift
//  Demo2
//
//  Created by AUTO SERVER on 11/26/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class VC2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
        navigationController?.popToRootViewController(animated: true)
        print(navigationController?.parent)
        //navigationController?.pushViewController(vc, animated: true)
    }
    
  

}
