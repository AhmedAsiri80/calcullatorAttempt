//
//  ViewController.swift
//  try1
//
//  Created by Ahmed Assiri on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0;
    var prevousNumber: Double = 0;
    var performingMath = false
    var  opertion = 0;
    
    @IBOutlet weak var Lable: UILabel! //
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            Lable.text = String(sender.tag-1)
            numberOnScreen = Double(Lable.text!)!
            performingMath = false
        }
        else {
            Lable.text = Lable.text! + String(sender.tag-1)
            numberOnScreen = Double(Lable.text!)!
        }
    } //
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if Lable.text != "" && sender.tag != 16 {
            
            prevousNumber = Double(Lable.text!)!
            if sender.tag == 12 // Divide
            {
                Lable.text = "/";
            }
           else if sender.tag == 13 // MUltiply
           {
               Lable.text = "*";
            }
            else if sender.tag == 14 // Minus
            {
                Lable.text = "-";
             }
            else if sender.tag == 15 // plus
            {
                Lable.text = "+";
             }
            opertion = sender.tag
            performingMath = true;
        } //
            
       else if sender.tag == 16 {
            
            if opertion == 12 {
                Lable.text = String(prevousNumber / numberOnScreen)
            }
            if opertion == 13 {
                Lable.text = String(prevousNumber * numberOnScreen)
            }
            if opertion == 14 {
                Lable.text = String(prevousNumber - numberOnScreen)
            }
            if opertion == 15 {
                Lable.text = String(prevousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            Lable.text = ""
                    prevousNumber = 0;
            numberOnScreen = 0;
            opertion = 0;
        
            
            
        }
    } //
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    } //end


}

