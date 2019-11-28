//
//  ViewController.swift
//  Demo9
//
//  Created by AUTO SERVER on 11/28/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        
        
        cell.textLabel?.text = "Title\(indexPath.row)"
        return cell
    }
    
    @IBOutlet weak var tableTest: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTest.dataSource = self
        tableTest.delegate = self
        // Do any additional setup after loading the view.
        navigationItem.rightBarButtonItem = editButtonItem
    
    }
    
    
//
//    func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
//        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil, actionProvider: {
//    }
//
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section)
    }
    
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

