//
//  ViewController.swift
//  Demo10
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTrans(_ sender: Any) {
        //let vc = VC2ViewController(nibName: "VC2ViewController", bundle: nil)
        let vc = VC2ViewController()
        //vc.presentationController
        present(vc, animated: true, completion: nil)
    }
    
}

