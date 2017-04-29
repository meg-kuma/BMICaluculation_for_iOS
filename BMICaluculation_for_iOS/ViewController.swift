//
//  ViewController.swift
//  BMICaluculation_for_iOS
//
//  Created by 目黒将稔 on 2017/04/29.
//  Copyright © 2017年 Masatoshi Meguro. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var bmiHeight: UITextField!
    @IBOutlet var bmiWeight: UITextField!
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var bmi: UILabel!
    
    var height:Float = 0.0
    var weight:Float = 0.0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.isHidden = true
        bmi.isHidden = true
        
        bmiHeight.delegate = self
        bmiWeight.delegate = self
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        bmiHeight.resignFirstResponder()
        bmiWeight.resignFirstResponder()
        
        return true
    }
    
    @IBAction func tap(_ sender: Any) {
        
        height = Float(bmiHeight.text!)!
        weight = Float(bmiWeight.text!)!
        
        height = height / 100
        
        let bmi_anser:Float = (weight / (height * height)) * 10
        
        bmi.text = String(round(bmi_anser) / 10)
        
        bmiLabel.isHidden = false
        bmi.isHidden = false
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }


}

