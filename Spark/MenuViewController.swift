//
//  MenuViewController.swift
//  Spark
//
//  Created by Rishi Salwi on 10/16/16.
//  Copyright © 2016 Rishi Salwi. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var Circuitry: UIButton!
    @IBOutlet weak var Coding: UIButton!
    @IBOutlet weak var Hardware: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*Circuitry.layer.borderWidth = 0.25;
        Hardware.layer.borderWidth = 0.25;
        Circuitry.layer.borderColor = UIColor.gray.cgColor
        Hardware.layer.borderColor = UIColor.gray.cgColor
        Circuitry.layer.cornerRadius = 10
        Hardware.layer.cornerRadius = 10
        Coding.layer.borderWidth = 0.25;
        Coding.layer.borderColor = UIColor.gray.cgColor
        Coding.layer.cornerRadius = 10*/
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
