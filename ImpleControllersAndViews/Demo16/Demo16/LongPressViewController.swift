//
//  LongPressViewController.swift
//  Demo16
//
//  Created by AUTO SERVER on 12/4/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class LongPressViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        img.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(sender:)))
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    @objc func handleLongPress(sender: UILongPressGestureRecognizer) {
//        if sender.state == .began {
//            let menu = UIMenuController.shared
//            becomeFirstResponder()
//
//            let menuItemCrop = UIMenuItem(title: "Crop", action: #selector(handleMenuItemAction))
//            let menuItemRotate = UIMenuItem(title: "Rotate", action: #selector(handleMenuItemAction))
//            let menuItemContrast = UIMenuItem(title: "Contrast", action: #selector(handleMenuItemAction))
//
//            menu.menuItems = [menuItemCrop, menuItemRotate, menuItemContrast]
//            let location = sender.location(in: sender.view)
//            let menuLocation = CGRect(x: location.x, y: location.y, width: 0, height: 0)
//            //menu.showMenu(from: sender.view! , rect: menuLocation)
//            menu.setTargetRect(<#T##targetRect: CGRect##CGRect#>, in: <#T##UIView#>)
//            //menu.setMenuVisible(<#T##menuVisible: Bool##Bool#>, animated: <#T##Bool#>)
//        }
        
        let alert = UIAlertController(title: "Long press", message: "long press hold!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @objc func handleMenuItemAction() {
        print("menu item tapped")
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
