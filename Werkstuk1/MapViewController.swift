//
//  MapViewController.swift
//  Werkstuk1
//
//  Created by student on 24/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet var map: MKMapView!
    
    let distanceFromMapMarker:CLLocationDegrees = 100000
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        let coordinates = locationManager.location?.coordinate
        map.setRegion(MKCoordinateRegionMakeWithDistance(coordinates!, distanceFromMapMarker, distanceFromMapMarker), animated: true)
        for value in personenLijst {
            let coordinatesPersoon = CLLocationCoordinate2DMake(value.gpsCoordinatenLat,value.gpsCoordinatenLong)
            let pin = Annotation(title: value.adres, subtitle: value.voorNaam + " " + value.naam, coordinate: coordinatesPersoon)
            map.addAnnotation(pin)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
