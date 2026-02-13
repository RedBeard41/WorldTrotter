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
    let interestSwitch = UISwitch()
    let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
        
//        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
       
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        let pointInterest = UILabel()
        
        pointInterest.text = "Points of Interest"
        pointInterest.textColor = .black
        pointInterest.font = UIFont.boldSystemFont(ofSize: 18)
        
        pointInterest.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pointInterest)
        
        pointInterest.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        pointInterest.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        
//        let interestSwitch = UISwitch()
        interestSwitch.isOn = true
        
        interestSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(interestSwitch)
        
        interestSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        interestSwitch.leadingAnchor.constraint(equalTo: pointInterest.trailingAnchor, constant: 16).isActive = true
        interestSwitch.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print("MapViewController loaded its view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        print("MapViewController will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        print("MapViewController did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
//        print("MapViewController will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
//        print("MapViewController did disappear")
    }
    
    @objc func mapTypeChanged(_ sender: Any) {
        
        let filter = interestSwitch.isOn ? MKPointOfInterestFilter.includingAll : MKPointOfInterestFilter.excludingAll
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
            
            let configuration = MKStandardMapConfiguration()
            configuration.pointOfInterestFilter = filter
            mapView.preferredConfiguration = configuration
            
        case 1:
            mapView.mapType = .hybrid
            
            let configuration = MKHybridMapConfiguration()
            configuration.pointOfInterestFilter = filter
            mapView.preferredConfiguration = configuration
            
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
        
        
        
    }
    
    
    
}

