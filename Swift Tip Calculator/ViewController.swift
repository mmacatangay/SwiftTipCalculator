//
//  ViewController.swift
//  Swift Tip Calculator
//
//  Created by Michael Macatangay on 5/10/15.
//  Copyright (c) 2015 Michael Macatangay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTip: UITextField!
    
    @IBOutlet weak var lblTipCalculated: UILabel!
    
    var mealCost = ""
    var tipPercentage = ""
    var answer : Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCalculate(sender: UIButton) {
        showTipCalculated(tip())
    }
    

    @IBAction func btnClear(sender: UIButton) {
        txtMealCost.text = ""
        txtTip.text = ""
        
        lblTipCalculated.text = "Tip Total"
    }
  
    //Calculate tip
    func tip() -> NSString {
        mealCost = txtMealCost.text
        tipPercentage = txtTip.text
        
        var fMealCost = (mealCost as NSString).floatValue
        var fTipPercentage = (tipPercentage as NSString).floatValue
        
        answer = fMealCost * (fTipPercentage * 0.01)
        
        var strAnswerFormat : NSString = NSString(format: "%0.2f", answer)
        
        return strAnswerFormat
    }
    
    func showTipCalculated(tipCalculated : NSString) -> Void {
        lblTipCalculated.text = "Tip: $\(tipCalculated)"
    }
}

