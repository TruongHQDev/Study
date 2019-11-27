//
//  DetailViewController.swift
//  Demo5
//
//  Created by AUTO SERVER on 11/27/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lb: UILabel!
    var strText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lb.text = strText
        // Do any additional setup after loading the view.
    }
    

}


extension DetailViewController: PassDataDelegate {
    func dataSelected(_ id: String) {
        lb.text = id
    }
    
    
}
