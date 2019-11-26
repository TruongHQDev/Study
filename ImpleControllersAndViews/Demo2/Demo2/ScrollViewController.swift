//
//  ScrollViewController.swift
//  Demo2
//
//  Created by AUTO SERVER on 11/26/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lb.text = "dkajhdkajshdkajshdklsjfhaklsdfjhakdfjahsdklfjahsdklfjhaskdjlfhakljsdfjkasdhfkljasdhfkjasfhkajsdfhklsjdfhaklsjfdhaskljdfhaksljdfhas"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func vc1Tapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func vc2Tapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC2ViewController") as! VC2ViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
