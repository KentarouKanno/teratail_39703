//
//  ViewController.swift
//  teratail_39703
//
//  Created by Kentarou on 2016/06/30.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.estimatedRowHeight = 70
        myTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    // Data Array
    var dataArray1 = ["One","Two","Three","Four","Five"]
    var dataArray2 = ["複数行ラベル1、複数行ラベル1、複数行ラベル1、複数行ラベル1、複数行ラベル1、","複数行ラベル2、複数行ラベル2、複数行ラベル2、","ラベル3","ラベル4","複数行ラベル5、複数行ラベル5、複数行ラベル5、複数行ラベル5、複数行ラベル5、複数行ラベル5、"]
    
    // MARK: - TableView Delegate & DataSource
    
    // Section Count
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // Row Count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray1.count
    }

    
    // Generate Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as!CustomCell
        cell.label1?.text = dataArray1[indexPath.row]
        cell.label2?.text = dataArray2[indexPath.row]
        return cell
    }
    
    // Select Cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}