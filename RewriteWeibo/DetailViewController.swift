//
//  DetailViewController.swift
//  RewriteWeibo
//
//  Created by kangkang on 16/11/13.
//  Copyright © 2016年 kangkang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height / 2))
        let subView2 = UIView(frame: CGRect(x: 1, y: self.view.bounds.height/2, width: self.view.bounds.width, height: self.view.bounds.height/2))
        subView.backgroundColor = UIColor.redColor()
//        let subViews = [subView,subView2]
        self.view.addSubview(subView)
        self.view.addSubview(subView2)
        
         // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
