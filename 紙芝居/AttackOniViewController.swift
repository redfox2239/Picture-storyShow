//
//  AttackOniViewController.swift
//  紙芝居
//
//  Created by HARADA REO on 2015/08/12.
//  Copyright (c) 2015年 reo harada. All rights reserved.
//

import UIKit

class AttackOniViewController: UIViewController {

    @IBOutlet weak var attackOniView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let requestURL = NSURL(string: "https://www.youtube.com/watch?v=GzZhFO7TpQM")
        let req = NSURLRequest(URL: requestURL!)
        self.attackOniView.loadRequest(req)
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
