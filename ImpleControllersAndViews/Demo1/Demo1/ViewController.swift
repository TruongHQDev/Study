//
//  ViewController.swift
//  Demo1
//
//  Created by AUTO SERVER on 11/25/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var mySwitch1: UISwitch!
    
    
    @IBOutlet weak var mySwitch2: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switch1(_ sender: Any) {
        if mySwitch1.isOn {
            lb1.text = "switch1 on"
        } else {
            lb1.text = "switch1 off"
        }
    }
    
    @IBAction func switch2(_ sender: Any) {
        if mySwitch2.isOn {
            lb2.text = "switch2 on"
        } else {
            lb2.text = "switch2 off"
        }
    }
}

