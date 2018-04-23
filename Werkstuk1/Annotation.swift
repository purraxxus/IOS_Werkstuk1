//
//  Annotation.swift
//  Werkstuk1
//
//  Created by student on 23/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import MapKit

class Annotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
