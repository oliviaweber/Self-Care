//
//  QuizViewController.swift
//  SelfCheckup
//
//  Created by Olivia on 4/20/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
 //outlets for the switches

    
    @IBOutlet weak var switchVal: UILabel!
    
    @IBOutlet weak var switchVall: UILabel!
    
    @IBOutlet weak var switchValll: UILabel!
    
    @IBOutlet weak var switchVallll: UILabel!
    
    @IBOutlet weak var switchValllll: UILabel!
    
    //actions
    
    
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
                 global.oneVar = "yes"
              }
              else {
                 global.oneVar = "no"
              }
        switchVal.text = global.oneVar
    }
    
    
    @IBAction func mySwitchh(_ sender: UISwitch) {
        if sender.isOn {
                 global.twoVar = "yes"
              }
              else {
                 global.twoVar = "no"
              }
        switchVall.text = global.twoVar
    }
    
    
    @IBAction func mySwitchhh(_ sender: UISwitch) {
        if sender.isOn {
                 global.threeVar = "yes"
              }
              else {
                 global.threeVar = "no"
              }
        switchValll.text = global.threeVar
    }
    
    
    @IBAction func mySwitchhhh(_ sender: UISwitch) {
        if sender.isOn {
                        global.fourVar = "yes"
                     }
                     else {
                        global.fourVar = "no"
                     }
               switchVallll.text = global.fourVar
    }
    
    @IBAction func mySwitchhhhh(_ sender: UISwitch) {
        if sender.isOn {
                        global.fiveVar = "yes"
                     }
                     else {
                        global.fiveVar = "no"
                     }
               switchValllll.text = global.fiveVar
    }
    
    
    

      // include the code within the brackets in the viewDidLoad function
    override func viewDidLoad() {
     global.oneVar = "off"
     global.twoVar = "off"
     global.threeVar = "off"
     global.fourVar = "off"
     global.fiveVar = "off"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
