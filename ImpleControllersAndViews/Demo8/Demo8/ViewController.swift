//
//  ViewController.swift
//  Demo8
//
//  Created by AUTO SERVER on 11/28/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! TestTableViewCell
        cell.lb.text = "title\(indexPath.row)"
       // cell.textLabel?.text = "Title"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
        
        //delegate?.send(data: "XXXX")
        //present(vc, animated: true, completion: nil)
        vc.str = "Title\(indexPath.row)"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var footerView: UIView!
    
    
    var delegate: DataDelegate?
    @IBOutlet weak var tableTest: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTest.dataSource = self
        tableTest.delegate = self
        tableTest.tableHeaderView = headerView
        tableTest.tableFooterView = footerView
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, view, complectionHandler) in
           // view.backgroundColor  = .red
            //self.tableTest.deleteRows(at: [indexPath], with: .automatic)
            
            complectionHandler(true)
            
        }
        delete.backgroundColor = .red
            return UISwipeActionsConfiguration(actions: [delete])
    }


}

protocol DataDelegate {
    func send(data: String)
}
