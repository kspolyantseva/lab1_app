//
//  ViewController.swift
//  lab1_app
//
//  Created by Ksenia Polyantseva on 14/11/2018.
//  Copyright © 2018 Ксения Полянцева. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textL11: UITextField!
    @IBOutlet weak var textL12: UITextField!
    @IBOutlet weak var textL13: UITextField!
    @IBOutlet weak var textL21: UITextField!
    @IBOutlet weak var textL22: UITextField!
    @IBOutlet weak var textL23: UITextField!
    @IBOutlet weak var textL31: UITextField!
    @IBOutlet weak var textL32: UITextField!
    @IBOutlet weak var textL33: UITextField!
    @IBOutlet weak var textL41: UITextField!
    @IBOutlet weak var textL42: UITextField!
    @IBOutlet weak var textL43: UITextField!
    @IBOutlet weak var textL4: UITextField!
    @IBOutlet weak var textL5: UITextField!
    @IBOutlet weak var textT: UITextField!
    
    @IBOutlet weak var testLab: UILabel!
    @IBOutlet weak var textBad: UILabel!
    @IBOutlet weak var textGood: UILabel!
    @IBOutlet weak var textGood1: UILabel!
    @IBOutlet weak var textBad1: UILabel!
    @IBOutlet weak var textGood2: UILabel!
    @IBOutlet weak var textBad2: UILabel!
    
    var calc: Double = 0
    var calc1: Double = 0
    var calc2: Double = 0
    var calc0: Double = 0
    var l11: Double = 0
    var l12: Double = 0
    var l13: Double = 0
    var l21: Double = 0
    var l22: Double = 0
    var l23: Double = 0
    var l31: Double = 0
    var l32: Double = 0
    var l33: Double = 0
    var l41: Double = 0
    var l42: Double = 0
    var l43: Double = 0
    var l4: Double = 0
    var l5: Double = 0
    var t: Double = 0
    var good: Double = 0
    var bad: Double = 0
    
    
    @IBAction func randText(_ sender: Any) {
        l11 = Double.random(in: 0.000001...0.001)
        l12 = Double.random(in: 0.000001...0.001)
        l13 = Double.random(in: 0.000001...0.001)
        l21 = Double.random(in: 0.000001...0.001)
        l22 = Double.random(in: 0.000001...0.001)
        l23 = Double.random(in: 0.000001...0.001)
        l31 = Double.random(in: 0.000001...0.001)
        l32 = Double.random(in: 0.000001...0.001)
        l33 = Double.random(in: 0.000001...0.001)
        l41 = Double.random(in: 0.000001...0.001)
        l42 = Double.random(in: 0.000001...0.001)
        l43 = Double.random(in: 0.000001...0.001)
        l4 = Double.random(in: 0.000001...0.001)
        l5 = Double.random(in: 0.000001...0.001)
        t = Double.random(in: 100...1000)
        l11 = round(100000*l11)/100000
        l12 = round(100000*l12)/100000
        l13 = round(100000*l13)/100000
        l21 = round(100000*l21)/100000
        l22 = round(100000*l22)/100000
        l23 = round(100000*l23)/100000
        l31 = round(100000*l31)/100000
        l32 = round(100000*l32)/100000
        l33 = round(100000*l33)/100000
        l41 = round(100000*l41)/100000
        l42 = round(100000*l42)/100000
        l43 = round(100000*l43)/100000
        l4 = round(100000*l4)/100000
        l5 = round(100000*l5)/100000
        //t = round(10000*t)/10000
        textL11.text = String(l11)
        textL12.text = String(l12)
        textL13.text = String(l13)
        textL21.text = String(l21)
        textL22.text = String(l22)
        textL23.text = String(l23)
        textL31.text = String(l31)
        textL32.text = String(l32)
        textL33.text = String(l33)
        textL41.text = String(l41)
        textL42.text = String(l42)
        textL43.text = String(l43)
        textL4.text = String(l4)
        textL5.text = String(l5)
        textT.text = String(t)
    }
    
    @IBAction func sameText(_ sender: Any) {
        l11 = Double.random(in: 0.000001...0.001)
        l11 = round(100000*l11)/100000
        l12 = l11
        l13 = l11
        l21 = l11
        l22 = l11
        l23 = l11
        l31 = l11
        l32 = l11
        l33 = l11
        l41 = l11
        l42 = l11
        l43 = l11
        l4 = l11
        l5 = l11
        t = Double.random(in: 0.01...1.0)
        t = round(10000*t)/10000
        textL11.text = String(l11)
        textL12.text = String(l11)
        textL13.text = String(l11)
        textL21.text = String(l11)
        textL22.text = String(l11)
        textL23.text = String(l11)
        textL31.text = String(l11)
        textL32.text = String(l11)
        textL33.text = String(l11)
        textL41.text = String(l11)
        textL42.text = String(l11)
        textL43.text = String(l11)
        textL4.text = String(l11)
        textL5.text = String(l11)
        textT.text = String(t)
    }
    
    @IBAction func cleanText(_ sender: Any) {
        textL11.text = ""
        textL12.text = ""
        textL13.text = ""
        textL21.text = ""
        textL22.text = ""
        textL23.text = ""
        textL31.text = ""
        textL32.text = ""
        textL33.text = ""
        textL41.text = ""
        textL42.text = ""
        textL43.text = ""
        textL4.text = ""
        textL5.text = ""
        textT.text = ""
        textBad.text = ""
        textGood.text = ""
        textBad1.text = ""
        textGood1.text = ""
        textBad2.text = ""
        textGood2.text = ""
    }

  
    @IBAction func calculate(_ sender: Any) {
        l11 = Double(textL11.text!)!
        l12 = Double(textL12.text!)!
        l13 = Double(textL13.text!)!
        l21 = Double(textL21.text!)!
        l22 = Double(textL22.text!)!
        l23 = Double(textL23.text!)!
        l31 = Double(textL31.text!)!
        l32 = Double(textL32.text!)!
        l33 = Double(textL33.text!)!
        l41 = Double(textL41.text!)!
        l42 = Double(textL42.text!)!
        l43 = Double(textL43.text!)!
        l4 = Double(textL4.text!)!
        l5 = Double(textL5.text!)!
        t = Double(textT.text!)!
       // calc = (1 - (1 - l11 * t) * (1 - l12 * t) * (1 - l13 * t) * (1 - l21 * t) * (1 - l22 * t) * (1 - l23 * t) * (1 - l31 * t) * (1 - l32 * t) * (1 - l33 * t) * (1 - l41 * t) * (1 - l42 * t) * (1 - l43 * t)) * (1 - l4 * t) * (1 - l5 * t)
        calc0 = (1 - exp(-1 * l11 * t) * exp(-1 * l12 * t) * exp(-1 * l13 * t) * exp(-1 * l21 * t) * exp(-1 * l22 * t) * exp(-1 * l23 * t) * exp(-1 * l31 * t) * exp(-1 * l32 * t) * exp(-1 * l33 * t) * exp(-1 * l41 * t) * exp(-1 * l42 * t) * exp(-1 * l43 * t))  * exp(-1 * l5 * t)
        calc = calc0 * exp(-1 * l4 * t)
        calc = round(100000*calc)/100000
        textGood.text = String(calc)
        bad = 1 - calc
        textBad.text = String(bad)
        var p4 = exp(-1 * l4 * t)
        var mazh = (3 * (pow(p4, 2))) - (2 * (pow(p4, 3)))
        var parn = (2 * (pow(p4, 2))) - pow((pow(p4, 2)), 2)
        calc1 = calc0 * mazh
        calc1 = round(100000*calc1)/100000
        textGood1.text = String(calc1)
        bad = 1 - calc1
        textBad1.text = String(bad)
        calc2 = calc0 * parn
        calc2 = round(100000*calc2)/100000
        textGood2.text = String(calc2)
        bad = 1 - calc2
        textBad2.text = String(bad)
      // var dgh = pow(p4, 3)
        
        //var aaa = exp(l11*t)
        //testLab.text = String(aaa)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -250, up: true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -250, up: false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool) {
       let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        UIView.beginAnimations("AnimateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

