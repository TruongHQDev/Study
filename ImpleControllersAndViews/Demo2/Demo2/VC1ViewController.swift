//
//  VC1ViewController.swift
//  Demo2
//
//  Created by AUTO SERVER on 11/26/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class VC1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navController = navigationController!
        let img = UIImage(named: "nike")
        let imgView = UIImageView(image: img)
        let item = UIBarButtonItem(customView: imgView)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - img!.size.width / 2
        let bannery = bannerHeight / 2 - img!.size.height / 2
        
        imgView.frame = CGRect(x: bannerX, y: bannery, width: bannerWidth, height: bannerHeight)
        
        imgView.contentMode = .scaleAspectFit
        navigationController?.navigationBar.backgroundColor = .blue
        navigationItem.titleView = imgView
        // Do any additional setup after loading the view.
    }
    
    @IBAction func vc2Tapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC2ViewController") as! VC2ViewController
        
        navigationController?.pushViewController(vc, animated: true)
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
