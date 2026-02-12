//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Gabes mac on 2/2/26.
//

import UIKit
import MapKit


class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Satellite", "Hybrid"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
    }
    
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
