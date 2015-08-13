//
//  ViewController.swift
//  UITableView-Tutorial
//
//  Created by Jan Brinkmann
//  Copyright (c) 2015 Jan Brinkmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var entries = ["Test"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myTableCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = entries[indexPath.row]
        
        return cell

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

