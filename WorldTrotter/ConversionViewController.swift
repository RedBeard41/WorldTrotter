//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Gabes mac on 1/31/26.
//

import UIKit

class ConversionViewController: UIViewController {

    
    override func loadView() {
        super.loadView()
        
        let view = UIView()
        
        view.backgroundColor = UIColor(red: 245/255, green: 244/255, blue: 241/255, alpha: 0.85)
        self.view = view
        
        let customColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        let largeFontSize = CGFloat(70)
        let smallFontSize = CGFloat(30)
        
        
        let tempFahrenheitLabel = UILabel()
        tempFahrenheitLabel.text = "212"
        tempFahrenheitLabel.textColor = customColor
        tempFahrenheitLabel.font = UIFont.systemFont(ofSize: largeFontSize)
        tempFahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        let fLabel = UILabel()
        fLabel.text = "degrees Fahrenheit"
        fLabel.textColor = customColor
        fLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        fLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let compareLabel = UILabel()
        compareLabel.text = "is equal to"
        compareLabel.textColor = .black
        compareLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        compareLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let tempCelsiusLabel = UILabel()
        tempCelsiusLabel.text = "100"
        tempCelsiusLabel.textColor = customColor
        tempCelsiusLabel.font = UIFont.systemFont(ofSize: largeFontSize)
        tempCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cLabel = UILabel()
        cLabel.text = "degrees Celsius"
        cLabel.textColor = customColor
        cLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
       
        
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
        
        
//        print("ConversionViewController loaded its view")
        
    }


}

