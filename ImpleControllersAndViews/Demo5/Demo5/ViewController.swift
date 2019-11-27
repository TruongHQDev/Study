//
//  ViewController.swift
//  Demo5
//
//  Created by AUTO SERVER on 11/27/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progessView: UIProgressView!
    
    let progress = Progress(totalUnitCount: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didProgessTapped(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                print("finished")
                return
            }
            
            self.progress.completedUnitCount += 1
            let progressFloat = Float(self.progress.fractionCompleted)
            self.progessView.setProgress(progressFloat, animated: true)
           // self.progessView.progress = progressFloat
            
        }
        
        
    }
    
}

