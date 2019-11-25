//
//  PickerValueViewController.swift
//  Demo1
//
//  Created by AUTO SERVER on 11/25/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class PickerValueViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var txtDate: UITextField!
    
    let datePick = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//txtDate.inputView = datePick
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickerChange(_ sender: Any) {
        let dateFormatter = DateFormatter()

        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short

        let strDate = dateFormatter.string(from: datePicker.date)
        txtDate.text = strDate
        print(txtDate.text)
        
    }
    
}
