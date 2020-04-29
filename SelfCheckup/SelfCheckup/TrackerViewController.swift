//
//  TrackerViewController.swift
//  SelfCheckup
//
//  Created by Olivia on 4/20/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

// add the statements to the initial class declaration
class TrackerViewController: UIViewController,
UIPickerViewDataSource, UIPickerViewDelegate{
    
    // include array
    let items = ["Happy", "Sad", "Energized", "Sleepy", "Stressed", "Annoyed"]
            
    //initialize a String
    var selection:String!
    
//outlets
    
    @IBOutlet weak var sliderVal: UILabel!
    
    
    @IBOutlet weak var pickerVal: UILabel!
    
    
    @IBOutlet weak var picker: UIPickerView!
    
//actions
    
   
    @IBAction func mySlider(_ sender: UISlider) {
        global.sliderVar = Int(sender.value)
        sliderVal.text = "\(global.sliderVar)"
    }
    
//add these functions to run picker
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return items.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return items[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selection = items[row]
            pickerVal.text = "You selected: " + selection
            global.pickerVar = selection
        }
            
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //add to viewDidLoad
        picker.delegate = self
        picker.dataSource = self

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
