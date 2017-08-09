//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ebony Tiggs on 8/9/17.
//  Copyright © 2017 Ebony Tiggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
  
    var emojis = ["🤦🏾‍♀️","🤷🏾‍♀️","💋","🤣","😘","🍁","🏀","🏈","⚾️"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    tableview.dataSource = self
    tableview.delegate = self
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell

    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
