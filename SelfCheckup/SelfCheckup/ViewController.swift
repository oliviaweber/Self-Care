//
//  ViewController.swift
//  SelfCheckup
//
//  Created by Olivia on 4/20/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

// include in the initial ViewController above ViewController declaration below import UIKIt
class Global {
    var nameVar = String()
    var oneVar = String()
    var twoVar = String()
    var threeVar = String()
    var fourVar = String()
    var fiveVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()
        
//the outlets
class ViewController: UIViewController {
    
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theAge: UILabel!
    
    @IBOutlet weak var theDate: UILabel!
    
    @IBOutlet weak var qOne: UILabel!
    
    @IBOutlet weak var qTwo: UILabel!
    
    @IBOutlet weak var qThree: UILabel!
    
    @IBOutlet weak var qFour: UILabel!
    
    @IBOutlet weak var qFive: UILabel!
    
    @IBOutlet weak var theMood: UILabel!
    
    @IBOutlet weak var moodRating: UILabel!
    
    @IBOutlet weak var navView: UIView!
    
//the textfields
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myAge: UITextField!
    
    @IBOutlet weak var myDate: UITextField!
    
//the actions, include the code within the brackets for the Submit button
    
    @IBAction func myButton(_ sender: Any) {global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    @IBAction func myButtonss(_ sender: Any) {
        global.nameVar = myAge.text!
        theAge.text = "Age: " + global.nameVar
        myAge.resignFirstResponder()
    }
    
    @IBAction func myButtonsss(_ sender: Any) {
        global.nameVar = myDate.text!
        theDate.text = "Date: " + global.nameVar
        myDate.resignFirstResponder()
    }
    
    @IBAction func clickMenu(_ sender: Any) {
        if(navView.isHidden) {
                   navView.isHidden = false
               }
               else {
                   navView.isHidden = true
               }
    }
    
     
    
    // create viewWillAppear function to display the result
    override func viewWillAppear(_ animated: Bool){
    qOne.text = "Question 1: \(global.oneVar)"
    qTwo.text = "Question 2: \(global.twoVar)"
    qThree.text = "Question 3: \(global.threeVar)"
    qFour.text = "Question 4: \(global.fourVar)"
    qFive.text = "Question 5: \(global.fiveVar)"
    moodRating.text = "Mood Rating: \(global.sliderVar)"
    theMood.text = "Mood: \(global.pickerVar)"
    
    }

//Navigation Bar
    override func viewWillDisappear(_ animated: Bool) {
        navView.isHidden = true
    }
        
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

