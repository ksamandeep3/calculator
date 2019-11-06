//
//  ViewController.swift
//  calculator
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var digit1: Double! = nil
    var function = ""
    var digit2: Double! = nil
    var output: Double! = 0.0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLabel.text =  "0"
        digit1 = nil
        digit2 = nil
        output = 0.0
    }

    @IBAction func perceBTn(_ sender: Any)
    {
        function = "%"
        resultLabel.text = ""
        
    }
    @IBAction func divideBTn(_ sender: Any)
    {
        function = "/"
        resultLabel.text = ""
        
    }
    @IBAction func multiplyBTn(_ sender: Any)
    {
        function = "*"
        resultLabel.text = ""
    }
    @IBAction func minusBTn(_ sender: Any)
    {
        function = "-"
        resultLabel.text = ""
        
    }
    @IBAction func plusBTn(_ sender: Any)
    {
        function = "+"
        resultLabel.text = ""
        
    }
    @IBAction func equalBTn(_ sender: Any)
    {
        
         calculate()
         resultLabel.text = String(format: "%.1f", output)
    }
    
    @IBAction func dotBTn(_ sender: Any)
    {
        if(resultLabel.text!.contains(".")){
            return
        }
        
        if(resultLabel.text == "."){
            resultLabel.text = "."
        }else{
            resultLabel.text = resultLabel.text! + "."
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    
    @IBAction func num0(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "0"
        }else{
            resultLabel.text = resultLabel.text! + "0"
        }
        
    
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    
    @IBAction func num1(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "1"
        }else{
            resultLabel.text = resultLabel.text! + "1"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num2(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "2"
        }else{
            resultLabel.text = resultLabel.text! + "2"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num3(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "3"
        }else{
            resultLabel.text = resultLabel.text! + "3"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num4(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "4"
        }else{
            resultLabel.text = resultLabel.text! + "4"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num5(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "5"
        }else{
            resultLabel.text = resultLabel.text! + "5"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num6(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "6"
        }else{
            resultLabel.text = resultLabel.text! + "6"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num7(_ sender: Any)
    {
        if(resultLabel.text == "0"){
            resultLabel.text = "7"
        }else{
            resultLabel.text = resultLabel.text! + "7"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
        
    }
    @IBAction func num8(_ sender: Any)
    { if(resultLabel.text == "0"){
        resultLabel.text = "8"
    }else{
        resultLabel.text = resultLabel.text! + "8"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
    }
    @IBAction func num9(_ sender: Any)
    { if(resultLabel.text == "0"){
        resultLabel.text = "9"
    }else{
        resultLabel.text = resultLabel.text! + "9"
        }
        
        if(digit1 == nil){
            digit1 = Double(resultLabel.text!)
        } else if (digit1 != nil && function == "" ){
            digit1 = Double(resultLabel.text!)
        } else{
            digit2 = Double(resultLabel.text!)
        }
    }
    override func viewDidLoad() {
             super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func calculate(){
        
        if(function == "+"){
            if(digit1 == nil || digit2 == nil){
                output = 0.0
                return
            }
            output = digit1 + digit2
        } else if(function == "-"){
            if(digit1 == nil || digit2 == nil){
                output = 0.0
                return
            }
            output = digit1 - digit2
        } else if(function == "*"){
            if(digit1 == nil || digit2 == nil){
                output = 0.0
                return
            }
            output = digit1 * digit2
        } else if(function == "/"){
            if(digit1 == nil || digit2 == nil){
                output = 0.0
                return
            }
            output = digit1 / digit2
        } else if(function == "%"){
            if(digit1 == nil || digit2 == nil){
                output = 0.0
                return
            }
            output = digit1.truncatingRemainder(dividingBy: digit2)
        }
        
        digit1 = output
        digit2 = nil
        function = ""
        
        
        
    }

}

