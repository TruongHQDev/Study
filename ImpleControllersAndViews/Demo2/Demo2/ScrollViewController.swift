//
//  ScrollViewController.swift
//  Demo2
//
//  Created by AUTO SERVER on 11/26/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lb.text = "dkajhdkajshdkajshdklsjfhaklsdfjhakdfjahsdklfjahsdklfjhaskdjlfhakljsdfjkasdhfkljasdhfkjasfhkajsdfhklsjdfhaklsjfdhaskljdfhaksljdfhas"
        // Do any additional setup after loading the view.
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
