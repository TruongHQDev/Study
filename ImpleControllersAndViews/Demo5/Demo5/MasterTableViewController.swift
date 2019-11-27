//
//  MasterTableViewController.swift
//  Demo5
//
//  Created by AUTO SERVER on 11/27/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    weak var delegate: PassDataDelegate?
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Title"
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected = "row[\(indexPath.row)]"
        print(selected)
        //delegate?.dataSelected(selected)
//        if let detailVC = delegate as? DetailViewController, let detailNavVC = detailVC.navigationController {
//            splitViewController?.showDetailViewController(detailVC, sender: nil)
//        }
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.strText = selected
        splitViewController?.showDetailViewController(vc, sender: nil)
    }
   
}


protocol PassDataDelegate: class {
    func dataSelected(_ id: String)
}
