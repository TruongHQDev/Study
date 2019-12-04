//
//  PanViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        img.isUserInteractionEnabled = true
        
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        
        img.addGestureRecognizer(panGesture)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translation.x , y: view.center.y + translation.y)
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    

  

}
