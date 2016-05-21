
//
//  DeparturesViewController.swift
//  紙芝居
//
//  Created by HARADA REO on 2015/08/11.
//  Copyright (c) 2015年 reo harada. All rights reserved.
//

import UIKit

class DeparturesViewController: UIViewController {

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

    @IBAction func selectLife(sender: AnyObject) {
        let alertController = UIAlertController(title: "人生の選択", message: "このあとどうする？", preferredStyle: UIAlertControllerStyle.ActionSheet)

        let attackAction = UIAlertAction(title: "鬼退治にいく", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("moveAttackOni", sender: nil)
        }
        let playAction = UIAlertAction(title: "ギャルと遊ぶ", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("movePlayGirl", sender: nil)
        }
        let wildAction = UIAlertAction(title: "世界に失望して、グレる", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("moveWildLife", sender: nil)
        }


        let cancelAction = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.Cancel) { (UIAlertAction) -> Void in
        }
        
        alertController.addAction(attackAction)
        alertController.addAction(playAction)
        alertController.addAction(wildAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
}
