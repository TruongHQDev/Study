//
//  ViewController.swift
//  Demo6
//
//  Created by AUTO SERVER on 11/28/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redButton: UIButton!
    
    var tapGesture: UITapGestureRecognizer?
    
    var animator: UIDynamicAnimator?
    var gravity: UIGravityBehavior?
    var collision: UICollisionBehavior?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//
//        let gravity = UIGravityBehavior(items: [redButton])
//        let direction = CGVector(dx: 0.0, dy: 1.0)
//        gravity.gravityDirection = direction
//        animator.addBehavior(gravity)
        
        
        self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        self.view.addGestureRecognizer(self.tapGesture!)
        
        self.gravity = UIGravityBehavior()
        self.collision = UICollisionBehavior()
        gravity?.angle = 0.7
        self.animator = UIDynamicAnimator(referenceView: self.view)
        
        
        self.animator?.addBehavior(self.gravity!)
        self.collision?.translatesReferenceBoundsIntoBoundary = true
        self.animator?.addBehavior(self.collision!)
        self.addRect()
    }
    
    func addRect() {
        let timeout = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: timeout) {
            let part = Int(self.view.bounds.width / 5)
            for i in 0..<6 {
                let rect = UIView(frame: CGRect(x: part * i, y: 0, width: 30, height: 30))
                rect.backgroundColor = .red
                self.view.addSubview(rect)
                
                self.gravity?.addItem(rect)
                self.collision?.addItem(rect)
            }
            
            self.addRect()
        }
    }
    
    
    @objc func tap() {
        print("Tapped")
    }


}

