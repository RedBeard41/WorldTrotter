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
        let margins = view.layoutMarginsGuide
        
        
        let tempFahrenheitLabel = UILabel()
        tempFahrenheitLabel.text = "212"
        tempFahrenheitLabel.textColor = customColor
        tempFahrenheitLabel.font = UIFont.systemFont(ofSize: largeFontSize)
        tempFahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempFahrenheitLabel)
        
        tempFahrenheitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        tempFahrenheitLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        
        
        let fLabel = UILabel()
        fLabel.text = "degrees Fahrenheit"
        fLabel.textColor = customColor
        fLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        fLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fLabel)
        
        fLabel.topAnchor.constraint(equalTo: tempFahrenheitLabel.bottomAnchor, constant: 8).isActive = true
        fLabel.centerXAnchor.constraint(equalTo: tempFahrenheitLabel.centerXAnchor).isActive = true
        
        let compareLabel = UILabel()
        compareLabel.text = "is equal to"
        compareLabel.textColor = .black
        compareLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        compareLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(compareLabel)
        
        compareLabel.topAnchor.constraint(equalTo: fLabel.bottomAnchor, constant: 8).isActive = true
        compareLabel.centerXAnchor.constraint(equalTo: tempFahrenheitLabel.centerXAnchor).isActive = true
        
        let tempCelsiusLabel = UILabel()
        tempCelsiusLabel.text = "100"
        tempCelsiusLabel.textColor = customColor
        tempCelsiusLabel.font = UIFont.systemFont(ofSize: largeFontSize)
        tempCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempCelsiusLabel)
        
        tempCelsiusLabel.topAnchor.constraint(equalTo: compareLabel.bottomAnchor, constant: 8).isActive = true
        tempCelsiusLabel.centerXAnchor.constraint(equalTo: tempFahrenheitLabel.centerXAnchor).isActive = true
        
        let cLabel = UILabel()
        cLabel.text = "degrees Celsius"
        cLabel.textColor = customColor
        cLabel.font = UIFont.systemFont(ofSize: smallFontSize)
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cLabel)
        
        cLabel.topAnchor.constraint(equalTo: tempCelsiusLabel.bottomAnchor, constant: 8).isActive = true
        cLabel.centerXAnchor.constraint(equalTo: tempFahrenheitLabel.centerXAnchor).isActive = true
        
        
        
       
        
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

