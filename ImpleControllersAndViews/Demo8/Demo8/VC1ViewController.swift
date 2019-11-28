//
//  VC1ViewController.swift
//  Demo8
//
//  Created by AUTO SERVER on 11/28/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class VC1ViewController: UIViewController {
    
     
    @IBOutlet weak var lbData: UILabel!
    var str: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lbData.text = str
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn(_ sender: Any) {

        navigationController?.popViewController(animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toDetail" {
////            let
//        }
//    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
