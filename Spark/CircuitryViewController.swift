//
//  CircuitryViewController.swift
//  Spark
//
//  Created by Rishi Salwi on 10/16/16.
//  Copyright © 2016 Rishi Salwi. All rights reserved.
//

import UIKit

class CircuitryViewController: UIViewController {

    @IBOutlet weak var Cir1: UIButton!
    @IBOutlet weak var Cir2: UIButton!
    @IBOutlet weak var Cir3: UIButton!
    @IBOutlet weak var Cir4: UIButton!
    @IBOutlet weak var Cir5: UIButton!
    @IBOutlet weak var Cir6: UIButton!
    @IBOutlet weak var Cir7: UIButton!
    @IBOutlet weak var Cir8: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*for i in [Cir1, Cir2, Cir3, Cir4, Cir5, Cir6, Cir7, Cir8]{
            i?.layer.borderWidth = 0.25;
            i?.layer.borderColor = UIColor.white.cgColor
            i?.layer.cornerRadius = 10
        }*/
        
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
