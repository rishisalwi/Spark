//
//  LedBlinkViewController.swift
//  Spark
//
//  Created by Rishi Salwi on 10/17/16.
//  Copyright © 2016 Rishi Salwi. All rights reserved.
//
import UIKit
import Darwin
var secondWire=false
var thirdWire=false
var fourthWire=false
var power=false
var fx=CGFloat(175.5)
var fy=CGFloat(310)
var sx=CGFloat(191)
var sy=CGFloat(310)
var tx=CGFloat(175.5)
var ty=CGFloat(400)
var ux=CGFloat(177)
var uy=CGFloat(405)
func distance(p1:UIImageView, p2:Array<Double>) -> Double{
    let a=Double(p1.frame.origin.x)-p2[0]
    let b=Double(p1.frame.origin.y)-p2[1]
    let c=sqrt((a*a)+(b*b))
    return c
}

class LedBlinkViewController: UIViewController {
    @IBOutlet weak var Directions: UILabel!
    @IBOutlet weak var Block2: UIImageView!
    @IBOutlet weak var Block3: UIImageView!
    @IBOutlet weak var Block4: UIImageView!
    
    var firstWire=false
    
    @IBOutlet weak var Block: UIImageView!
    override func viewDidLoad(){
        super.viewDidLoad()
        Block.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 15, height: 90));
        if firstWire==false {
            self.Directions.text="Hey Welcome to Spark! Let's start by attaching that wire to the 5 Volt Power Supply and the breadboard."
        }
        
    }
    var location = CGPoint(x:0,y:0)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if firstWire==false{
            let touch : UITouch! = touches.first as UITouch!
            location = (touch?.location(in: self.view))!
            Block.center = location
            if distance(p1: Block, p2: [Double(fx),Double(fy)])<5 {
                firstWire=true
            }
        }
        else {
            firstWire = true
            Block.frame.origin.y=310
            Block.frame.origin.x=175.5
            self.Directions.text="NICE You finished your first challenge. Now for a circuit to work, the power needs to cycle back to ground. Connect the next wire to ground."
            Block2.frame = CGRect(origin: CGPoint(x: -50,y :0), size: CGSize(width: 15, height: 90));
            if secondWire==false{
                let touch : UITouch! = touches.first as UITouch!
                location = (touch?.location(in: self.view))!
                Block2.center = location
                if distance(p1: Block2, p2: [Double(sx),Double(sy)])<5 {
                    secondWire=true
                }
            }
            else {
                secondWire=true
                self.Directions.text = "Now it's time for the 220 ohm resistor! Connect it to the breadboard"
                Block2.frame.origin.x=185
                Block2.frame.origin.y=310.5
                Block3.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 10, height: 20));
                if thirdWire==false {
                    let touch : UITouch! = touches.first as UITouch!
                    location = (touch?.location(in: self.view))!
                    Block3.center = location
                    if distance(p1: Block3, p2: [Double(tx),Double(ty)])<5 {
                        thirdWire=true
                    }
                }
                else{
                    thirdWire=true
                    self.Directions.text="Well Done!!! Now attach the LED to complete the circuit."
                    Block3.frame.origin.x=tx
                    Block3.frame.origin.y=ty
                    Block4.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 20, height: 30));
                    if fourthWire==false {
                        let touch : UITouch! = touches.first as UITouch!
                        location = (touch?.location(in: self.view))!
                        Block4.center = location
                        if distance(p1: Block4, p2: [Double(ux),Double(uy)])<5 {
                            fourthWire=true
                        }
                    }
                    else {
                        fourthWire=true
                        self.Directions.text="Look at that LED glow!!!"
                        Block4.frame.origin.x=ux
                        Block4.frame.origin.y=uy
                        Block4.image = UIImage(named:"LED Green (3)")
                        
                    }
                    
                }
            }
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if firstWire==false{
            let touch : UITouch! = touches.first as UITouch!
            location = (touch?.location(in: self.view))!
            Block.center = location
            if distance(p1: Block, p2: [Double(fx),Double(fy)])<5 {
                firstWire=true
            }
        }
        else {
            firstWire = true
            Block.frame.origin.y=310
            Block.frame.origin.x=175.5
            self.Directions.text="NICE You finished your first challenge. Now for a circuit to work, the power needs to cycle back to ground. Connect the next wire to ground."
            Block2.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 15, height: 90));
            if secondWire==false{
                let touch : UITouch! = touches.first as UITouch!
                location = (touch?.location(in: self.view))!
                Block2.center = location
                if distance(p1: Block2, p2: [Double(sx),Double(sy)])<5 {
                    secondWire=true
                }
            }
            else {
                secondWire=true
                self.Directions.text = "Now it's time for the 220 ohm resistor! Connect it to the breadboard"
                Block2.frame.origin.x=185
                Block2.frame.origin.y=310.5
                Block3.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 10, height: 20));
                if thirdWire==false {
                    let touch : UITouch! = touches.first as UITouch!
                    location = (touch?.location(in: self.view))!
                    Block3.center = location
                    if distance(p1: Block3, p2: [Double(tx),Double(ty)])<5 {
                        thirdWire=true
                    }
                }
                else{
                    thirdWire=true
                    self.Directions.text="Well Done!!! Now attach the LED to complete the circuit."
                    Block3.frame.origin.x=tx
                    Block3.frame.origin.y=ty
                    Block4.frame = CGRect(origin: CGPoint(x: -10,y :0), size: CGSize(width: 20, height: 30));
                    if fourthWire==false {
                        let touch : UITouch! = touches.first as UITouch!
                        location = (touch?.location(in: self.view))!
                        Block4.center = location
                        if distance(p1: Block4, p2: [Double(ux),Double(uy)])<5 {
                            fourthWire=true
                        }
                    }
                    else {
                        fourthWire=true
                        self.Directions.text="Look at that LED glow!!!"
                        Block4.frame.origin.x=ux
                        Block4.frame.origin.y=uy
                        Block4.image = UIImage(named:"LED Green (3)")
                        
                    }
                    
                }
            }
        }
        
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
