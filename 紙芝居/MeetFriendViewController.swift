//
//  MeetFriendViewController.swift
//  紙芝居
//
//  Created by HARADA REO on 2015/08/11.
//  Copyright (c) 2015年 reo harada. All rights reserved.
//

import UIKit

class MeetFriendViewController: UIViewController {

    @IBOutlet weak var kibidangoTextField: UITextField!
    @IBOutlet weak var friendsImageView: UIImageView!
    @IBOutlet weak var nextStep: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nextStep.hidden = true
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
    @IBAction func presentKibidango(sender: AnyObject) {
        self.nextStep.hidden = false
        self.view.endEditing(true)
        let kibidangoNum = Int(self.kibidangoTextField.text!)
        if(kibidangoNum == 0){
            return
        }
        else if(kibidangoNum < 5){
            self.friendsImageView.image = UIImage(named: "仲間レベル1.gif")
        }
        else if(kibidangoNum < 25){
            self.friendsImageView.image = UIImage(named: "仲間レベル2.png")
        }
        else if(kibidangoNum < 50){
            self.friendsImageView.image = UIImage(named: "仲間レベル3.jpeg")
        }
        else{
            self.friendsImageView.image = UIImage(named: "仲間レベル4.jpeg")
        }
    }

}
