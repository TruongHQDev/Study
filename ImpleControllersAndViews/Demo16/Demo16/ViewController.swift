//
//  ViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        rightSwipe.direction = .right
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        upSwipe.direction = .up
        
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        downSwipe.direction = .down
        
        
        let imgSwipe = UISwipeGestureRecognizer(target: img, action: #selector(handleSwipe(sender:)))
        imgSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)
        
        
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
       
    
        if sender.state == .ended {
            switch sender.direction {
            case .right:
                img.backgroundColor = .red
            case .left:
                view.backgroundColor = .blue
            case .up:
                view.backgroundColor = .yellow
            case .down:
                view.backgroundColor = .black

            default:
                break
            }
        }
    }

}

