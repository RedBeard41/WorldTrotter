//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Gabes mac on 2/2/26.
//

import UIKit


class MapViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("MapViewController will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("MapViewController did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("MapViewController will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("MapViewController did disappear")
    }
    
    
}
