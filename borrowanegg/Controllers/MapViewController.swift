//
//  MapViewController.swift
//  learnSwift
//
//  Created by Alexandra Luca on 10/04/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    weak var mapView: MKMapView!
    var manager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView = MKMapView()
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        mapView.showsUserLocation = true
        self.view = mapView
        
    }
    
    func locationManager(manager:CLLocationManager, didUpdateLocations locations:[AnyObject]) {
        let spanX = 0.007
        let spanY = 0.007
        var newRegion = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: MKCoordinateSpanMake(spanX, spanY))
        mapView.setRegion(newRegion, animated: true)
    }
    
    func zoomIn(sender: AnyObject) {
    }
    
    
    func changeMapType(sender: AnyObject) {
    }
}
