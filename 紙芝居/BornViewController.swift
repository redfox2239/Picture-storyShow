//
//  BornViewController.swift
//  紙芝居
//
//  Created by HARADA REO on 2015/08/11.
//  Copyright (c) 2015年 reo harada. All rights reserved.
//

import UIKit

class BornViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func nextButton(sender: AnyObject) {
        let alertController = UIAlertController(title: "人生の選択", message: "桃太郎を育てますか？", preferredStyle: .Alert)
        let defaultAction = UIAlertAction(title: "はい", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("moveDepartures", sender: nil)
        }
        let cancelAction = UIAlertAction(title: "いいえ", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("moveGameOver", sender: nil)
        }
        
        alertController.addAction(defaultAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
}
