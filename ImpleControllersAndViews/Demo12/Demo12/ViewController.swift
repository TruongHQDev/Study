//
//  ViewController.swift
//  Demo12
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


    @IBAction func tapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
       // vc.config(data: "XXX")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc1 = segue.destination as? VC1ViewController {
            vc1.image = imageView.image
            vc1.imgTitle = titleLabel.text
        }
    }
    
    
}

