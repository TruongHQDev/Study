//
//  RotateViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        img.isUserInteractionEnabled = true
        
//        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(sender:)))
//
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(self.rotationGesture))
        img.addGestureRecognizer(rotationGesture)
        // Do any additional setup after loading the view.
    }
    
    
    
    @objc func rotationGesture(sender:UIRotationGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    
    @objc func handleRotation(sender: UIRotationGestureRecognizer) {
        guard sender.view != nil else {
            return
        }
        
        if sender.state == .began || sender.state == .changed {
            sender.view?.transform = sender.view!.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
