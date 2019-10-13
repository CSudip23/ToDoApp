//
//  ViewController.swift
//  ToDoApp1
//
//  Created by Sudip Chitroda on 2019-07-11.
//  Copyright © 2019 Sudip Chitroda. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
    var items : [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default,reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row] as! String
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemObj = UserDefaults.standard.object(forKey: "P1")
        if let tempItem = itemObj as? [String] {
            items = tempItem
        }
        table.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

