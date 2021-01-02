//
//  ViewController.swift
//  Calculator
//
//  Created by Janarthan Subburaj on 02/01/21.
//

import UIKit

class CalViewController: UIViewController {

    @IBOutlet weak var Resul_label: UILabel!
    var newSigns = true
    var Aoperator = "+"
    var num1: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func Input(number: String) {
        
        var textNumber = String(Resul_label.text!)
        
        if newSigns {
            
            textNumber = ""
            newSigns = false
            
        }
        textNumber = textNumber + number
        Resul_label.text = textNumber
        
    }
    @IBAction func Zero(_ sender: Any) {
        Input(number: "0")
    }
    
    @IBAction func Dot(_ sender: Any) {
        Input(number: ".")

    }
    
    @IBAction func one(_ sender: Any) {
        Input(number: "1")

    }
    @IBAction func two(_ sender: Any) {
        Input(number: "2")

    }
    
    @IBAction func three(_ sender: Any) {
        Input(number: "3")

    }
    @IBAction func four(_ sender: Any) {
        Input(number: "4")

    }
    @IBAction func five(_ sender: Any) {
        Input(number: "5")

    }
    @IBAction func six(_ sender: Any) {
        Input(number: "6")

    }
    @IBAction func seven(_ sender: Any) {
        Input(number: "7")

    }
    @IBAction func eight(_ sender: Any) {
        Input(number: "8")

    }
    @IBAction func nine(_ sender: Any) {
        Input(number: "9")

    }
    
    
    @IBAction func Multiply(_ sender: Any) {
        Aoperator = "*"
        num1 = Double(Resul_label.text!)
        newSigns = true
    
    }
    @IBAction func Divide(_ sender: Any) {
        Aoperator = "/"
        num1 = Double(Resul_label.text!)
        newSigns = true

    }
    
    @IBAction func Subtract(_ sender: Any) {
        Aoperator = "-"
        num1 = Double(Resul_label.text!)
        newSigns = true
    }
    @IBAction func Sum(_ sender: Any) {
        Aoperator = "+"
        num1 = Double(Resul_label.text!)
        newSigns = true

    }
    @IBAction func Clear(_ sender: Any) {
        Aoperator = "0"
        Resul_label.text = "0"
        num1 = Double(Resul_label.text!)
        newSigns = true

    }
    
    @IBAction func Plusminus(_ sender: Any) {
        var textNum = String(Resul_label.text!)
        textNum = "-" + textNum
        Resul_label.text = textNum

    }
    
    @IBAction func Persentage(_ sender: Any) {
        var num1 = Double(Resul_label.text!)
        num1 = num1! / 100.0
        Resul_label.text = String(num1!)
        newSigns = true
    }
    
    @IBAction func FinalResult(_ sender: Any) {
        let num2 = Double(Resul_label.text!)
        var equalNum: Double?
        
        switch Aoperator {
        case "*":
            equalNum = num1! * num2!
        case "/":
            equalNum = num1! / num2!
        case  "-":
            equalNum = num1! - num2!
        case "+":
            equalNum = num1! + num2!
        default:
            equalNum = 0.0
        }
        Resul_label.text = String(equalNum!)
        newSigns = true
        
    }
    
    
    
}

