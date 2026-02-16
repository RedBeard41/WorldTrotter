//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Gabes mac on 1/31/26.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Measurement<UnitTemperature>?{
        didSet {
            updateCelsiusLabel()
        }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        
//    let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
//    let firstView = UIView(frame: firstFrame)
//        firstView.backgroundColor = .blue
//        view.addSubview(firstView)
//        
//    let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
//    let secondView = UIView(frame: secondFrame)
//        secondView.backgroundColor = .green
//        firstView.addSubview(secondView)
        
        
        print("ConversionViewController loaded its view")
        
        updateCelsiusLabel( )
        
    }
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = "\(celsiusValue.value)"
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
//        celsiusLabel.text = textField.text
        
//        if let text = textField.text, !text.isEmpty {
//            celsiusLabel.text = text
//            
//        } else {
//            celsiusLabel.text = "???"
//        }
        
        if let text = textField.text, let value = Double(text){
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
        
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
        
    }


}

