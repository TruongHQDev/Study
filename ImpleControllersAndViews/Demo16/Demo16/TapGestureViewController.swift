//
//  TapGestureViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        img.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {
        guard sender.view != nil else {return}
        
        if sender.state == .ended {
            let animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeIn, animations: {
                sender.view!.center.x += 100
                sender.view!.center.y += 100
            })
            
            animator.startAnimation()
        }
    }

  

}
