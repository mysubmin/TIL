//
//  ViewController.swift
//  CallProject
//
//  Created by t2023-m0039 on 11/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    var checKing: Bool = true
    var opCheck: String = ""
    var ftnum: Double = 0.0
    var secnum: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var display: UILabel!
    
    var userinput = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userinput {
            let textBox = display.text!
            display.text = textBox + digit
        }else {
            display.text = digit
        }
        userinput = true
    }

    
    @IBAction func numCheck(_ sender: UIButton) {
        checKing = !checKing
    }
    
    
    @IBAction func operations(_ sender: Any) {
        if checKing {
            ftnum = Double(display.text!)!
            opCheck = (sender as AnyObject).currentTitle!
            display.text = ""
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        display.text = ""
    }
    
    
    @IBAction func result(_ sender: Any) {
        switch opCheck {
        case "+" :
            display.text = (String)(ftnum + Double(display.text!)!)
        case "-" :
            display.text = (String)(ftnum - Double(display.text!)!)
        case "X" :
            display.text = (String)(ftnum * Double(display.text!)!)
        case "/" :
            display.text = (String)(ftnum / Double(display.text!)!)
        default:
            display.text = ""
        }
    }
    
}

