//
//  Demo2VC1.swift
//  Demo1
//
//  Created by AUTO SERVER on 11/25/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class Demo2VC1: UIViewController {

    @IBOutlet weak var txttoShare: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onShareTapped(_ sender: Any) {
        let act = UIActivityViewController(activityItems: [txttoShare.text!], applicationActivities: nil)
        present(act, animated: true, completion: nil)
        
        
    }
    

}
