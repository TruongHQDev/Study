//
//  PinchViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.isUserInteractionEnabled = true
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
        img.addGestureRecognizer(pinch)
        // Do any additional setup after loading the view.
    }
    
    @objc func handlePinch(sender: UIPinchGestureRecognizer) {
        guard sender.view != nil else {return}
        
        if sender.state == .began || sender.state == .changed {
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            sender.scale = 1.0
        }
    }


}
