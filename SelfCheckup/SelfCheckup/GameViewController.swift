//
//  GameViewController.swift
//  SelfCheckup
//
//  Created by Olivia on 4/20/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
//variables
   var score:Int = 0
 var chars:Int = Int(arc4random_uniform(10) + 2)
    
    var counter:Int = 30
    var timer = Timer()
    var isTimerRunning:Bool = false //This will be used to make sure only one timer is created at a time.

    
//outlets
   
    @IBOutlet weak var myScore: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var handsanOne: UIButton!
    
    @IBOutlet weak var houseOne: UIButton!
    
    @IBOutlet weak var nurseOne: UIButton!
    
    @IBOutlet weak var tpOne: UIButton!
    
    //actions
    
    func didScore(points:Int){
       score = score + points
              if(score % 10 == 0) {
              score=0
       }
              myScore.text = "Score: \(score)"
       }
    
    
    
    @IBAction func startGame(_ sender: Any) {
        if isTimerRunning == false {
                   runTimer()
                   handsanOne.isHidden = false
                   houseOne.isHidden = false
                   nurseOne.isHidden = false
                   tpOne.isHidden = false
               
               }
    }
    
    
    
    func runTimer() {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(GameViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
                }
        
    @objc func updateTimer() {
            counter -= 1
            timerLabel.text = "\(counter)"
            if(counter == 0) {
                timerLabel.text = "Time's Up!"
                timer.invalidate()

            handsanOne.isHidden = true
            houseOne.isHidden = true
            nurseOne.isHidden = true
            tpOne.isHidden = true

            }
        }

    
    
    @IBAction func myReset(_ sender: Any) {
        score = 0
               myScore.text = "Score: \(score)"
               timer.invalidate()
               counter = 30
               timerLabel.text = "\(counter)"
               isTimerRunning = false
               handsanOne.isHidden = false
               houseOne.isHidden = false
               nurseOne.isHidden = false
               tpOne.isHidden = false
               chars = Int(arc4random_uniform(10) + 2)
    }
    
    
    
    
    
    @IBAction func myHandsan(_ sender: Any) {
         didScore(points: 25)
        handsanOne.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now () + 1) {
                self.handsanOne.isHidden = false
          DispatchQueue.main.asyncAfter(deadline: .now () + 5) {
              self.handsanOne.isHidden = true
          }
            }
    }
    
   
    @IBAction func myHouse(_ sender: Any) {
         didScore(points: 7)
        houseOne.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now () + 2) {
                self.houseOne.isHidden = false
          DispatchQueue.main.asyncAfter(deadline: .now () + 4) {
              self.houseOne.isHidden = true
          }
            }
    }
    
    
    @IBAction func myNurse(_ sender: Any) {
         didScore(points: 23)
        nurseOne.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now () + 5) {
                self.nurseOne.isHidden = false
          DispatchQueue.main.asyncAfter(deadline: .now () + 2) {
              self.nurseOne.isHidden = true
          }
            }
    }
    
    
    @IBAction func myTp(_ sender: Any) {
         didScore(points: 5)
      tpOne.isHidden = true
       DispatchQueue.main.asyncAfter(deadline: .now () + 1) {
               self.tpOne.isHidden = false
         DispatchQueue.main.asyncAfter(deadline: .now () + 5) {
             self.tpOne.isHidden = true
         }
           }
    }
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     handsanOne.isHidden = true
     houseOne.isHidden = true
     nurseOne.isHidden = true
     tpOne.isHidden = true
    
        
        
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


