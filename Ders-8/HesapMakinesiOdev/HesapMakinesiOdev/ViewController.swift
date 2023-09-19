//
//  ViewController.swift
//  HesapMakinesiOdev
//
//  Created by Kadirhan Keles on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var inputString = ""
    var isResultShown = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if let buttonText = sender.titleLabel?.text {
            switch buttonText {
            case "AC":
                clearInput()
            case "=":
                calculateResult()
            case "+":
                appendOperator("+")
            case "0"..."9":
                if isResultShown {
                    // Eğer sonuç gösteriliyorsa, yeni bir sayı girildiğinde sıfırla
                    inputString = ""
                    isResultShown = false
                }
                appendNumber(buttonText)
                
            default:
                print("Geçersiz Tuş")
            }
        }
    }
    
    func clearInput() {
        inputString = ""
        updateResultLabel()
    }
    
    func appendOperator(_ operatorSymbol: String) {
        if !inputString.isEmpty && !inputString.hasSuffix("+") { // Boş değilse ve string sonunda + varsa gir.
            inputString += operatorSymbol
        }
        updateResultLabel()
    }
    
    func appendNumber(_ number: String) {
        inputString += number
        updateResultLabel()
    }
    
    func calculateResult() {
        let resultArray = inputString.split(separator: "+")
        //let numbers = inputString.components(separatedBy: "+")
        var result: Int = 0
        
        for numbers in resultArray {
            if let number = Int(numbers) {
                result += number
            }
        }
        
        inputString = "\(result)"
        isResultShown = true
        updateResultLabel()
    }
    
    func updateResultLabel() {
        resultLabel.text = inputString
    }
}

