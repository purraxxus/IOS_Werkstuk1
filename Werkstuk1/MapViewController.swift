//
//  MapViewController.swift
//  Werkstuk1
//
//  Created by student on 24/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var map: MKMapView!
    
    let distanceFromMapMarker:CLLocationDegrees = 100000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let coordinates = CLLocationCoordinate2DMake(50.822557224337245,4.362658431445311)
        map.setRegion(MKCoordinateRegionMakeWithDistance(coordinates, distanceFromMapMarker, distanceFromMapMarker), animated: true)
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
