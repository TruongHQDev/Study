//
//  VC1ViewController.swift
//  Demo12
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class VC1ViewController: UIViewController {

    public var image: UIImage?
    public var imgTitle: String?
    
    @IBOutlet weak var imgView: UIImageView!
    
   
    @IBOutlet weak var titleLabel: UILabel!
    // var data : String?
    override func viewDidLoad() {
        super.viewDidLoad()
      //  lb.text = data
        self.imgView.image = image
        self.titleLabel.text = imgTitle
        
        // Do any additional setup after loading the view.
    }
    
//    func config(data: String?) {
//        lb.text = data
//    }



}
