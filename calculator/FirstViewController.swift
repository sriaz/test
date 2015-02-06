//
//  FirstViewController.swift
//  calculator
//
//  Created by Sulman on 2015-02-05.
//  Copyright (c) 2015 Sulman. All rights reserved.
//

import UIKit
var firstval = 0;
var secondval = 0;
var opcode = 0;
var sum = 0;
//NSString *string = @"5";
//int value = [string intValue];

class FirstViewController: UIViewController {

    
    @IBOutlet weak var ResultBox: UITextField!
    
    @IBAction func AddBut(sender: AnyObject) {
        //ResultBox.text = ResultBox.text! + "+"
        let newval:Int? = ResultBox.text.toInt()
        firstval = newval!
        ResultBox.text = ""
        
        opcode = 1;
    }
    
    @IBAction func SubtractNum(sender: AnyObject) {
        //ResultBox.text = ResultBox.text! + "-"
        let newval:Int? = ResultBox.text.toInt()
        firstval = newval!
        ResultBox.text = ""

        opcode = 2;
    }
    
    @IBAction func EqualsNum(sender: AnyObject) {
        let newval:Int? = ResultBox.text.toInt()
        secondval = newval!
        if(opcode == 1){
            sum = firstval + secondval
        }
        else if(opcode == 2){
            sum = firstval - secondval
        }
        ResultBox.text = String(sum)
    
    }
    
    @IBAction func Number1(sender: AnyObject) {
        ResultBox.text = ResultBox.text! + "1"
    }
    
    
    @IBAction func Number2(sender: AnyObject) {
        ResultBox.text = ResultBox.text! + "2"
    }

    @IBAction func Number3(sender: AnyObject) {
        ResultBox.text = ResultBox.text! + "3"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

