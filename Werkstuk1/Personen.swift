//
//  Personen.swift
//  Werkstuk1
//
//  Created by student on 13/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Personen {
    var naam: String
    var voorNaam: String
    var foto: String
    var adres: String
    var gpsCoordinatenLat: Double
    var gpsCoordinatenLong: Double
    var telefoonNummer: Int
    
    init(naam: String, voorNaam: String, foto: String, adres: String, gpsCoordinatenLat: Double, gpsCoordinatenLong: Double, telefoonNummer: Int) {
        self.naam = naam
        self.voorNaam = voorNaam
        self.foto = foto
        self.adres = adres
        self.gpsCoordinatenLat = gpsCoordinatenLat
        self.gpsCoordinatenLong = gpsCoordinatenLong
        self.telefoonNummer = telefoonNummer
    }
}
