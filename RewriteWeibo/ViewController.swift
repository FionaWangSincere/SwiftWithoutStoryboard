//
//  ViewController.swift
//  RewriteWeibo
//
//  Created by kangkang on 16/11/13.
//  Copyright © 2016年 kangkang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellReuseIdentify = "TableViewCell"
    
    let dataSource = ["hello", "big boom", "black mirror"]
    let date = ["2912799", "3733991010","37381999"]
    
    var navigationBar : UINavigationBar?
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//        view.backgroundColor = UIColor.redColor()
//        
//        self.view.addSubview(view)
//
        
        navigationBar = UINavigationBar(frame:CGRect(x: 0, y: 0, width: 600, height: 60))
        navigationBar?.tintColor = UIColor.blueColor()
        let tableView = UITableView(frame:CGRect(x: 0, y: 60, width:self.view.bounds.width, height: self.view.bounds.height))
        tableView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(tableView)
        self.view.addSubview(navigationBar!)
        

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: cellReuseIdentify)
        tableView.rowHeight = 100
        
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  dataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentify, forIndexPath: indexPath) as! TableViewCell
        cell.nameL.text = dataSource[indexPath.row]
        cell.detailL.text = date[indexPath.row]
        
        cell.detailL.textColor = UIColor.grayColor()
        cell.nameL.textColor = UIColor.blackColor()
       return cell
    }
}

