//
//  PersoonDetailViewController.swift
//  Werkstuk1
//
//  Created by student on 15/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
var clickedPersoonFoto:String!

class PersoonDetailViewController: UIViewController {
    
    var clickedPersoon:Personen!
    
    @IBOutlet weak var persoonImage: UIImageView!
    @IBOutlet weak var persoonNaam: UILabel!
    @IBOutlet weak var persoonAdres: UILabel!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet var map: MKMapView!
    
    let distanceFromMapMarker:CLLocationDegrees = 2000
    
    override func viewDidLoad() {
        clickedPersoonFoto = clickedPersoon.foto
        super.viewDidLoad()
        persoonImage.image = UIImage(named:clickedPersoon.foto)
        persoonNaam.text = clickedPersoon.voorNaam + " " + clickedPersoon.naam
        persoonAdres.text = "0" + String(clickedPersoon.telefoonNummer)
        latitude.text = String(clickedPersoon.gpsCoordinatenLat)
        longitude.text = String(clickedPersoon.gpsCoordinatenLong)
        let coordinates = CLLocationCoordinate2DMake(clickedPersoon.gpsCoordinatenLat, clickedPersoon.gpsCoordinatenLong)
        map.setRegion(MKCoordinateRegionMakeWithDistance(coordinates, distanceFromMapMarker, distanceFromMapMarker), animated: true)
        let pin = Annotation(title: clickedPersoon.adres, subtitle: clickedPersoon.voorNaam + " " + clickedPersoon.naam, coordinate: coordinates)
        map.addAnnotation(pin)
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
