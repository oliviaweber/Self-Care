//
//  RelaxViewController.swift
//  SelfCheckup
//
//  Created by Olivia on 4/20/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

class RelaxViewController: UIViewController {
    
    @IBOutlet weak var gifView: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifView.loadGif(name:"giphy")
        
       

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
