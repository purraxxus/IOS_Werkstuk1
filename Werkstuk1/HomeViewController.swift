//
//  ViewController.swift
//  Werkstuk1
//
//  Created by student on 13/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

var personenLijst: [Personen] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let persoon1 = Personen(naam: "Amerijckx", voorNaam: "Kobe", foto: "kobe.jpg", adres: "Vollezelstraat 97 1755 Oetingen", gpsCoordinatenLat: 50.7688826, gpsCoordinatenLong: 4.049691400000029, telefoonNummer: 0486210707)
    let persoon2 = Personen(naam: "Tordeur", voorNaam: "Kelly", foto: "kelly.jpg", adres: "Gaasbeekstraat 1 1600 Oudenaken", gpsCoordinatenLat: 50.780032959999999, gpsCoordinatenLong: 4.197631099999967,telefoonNummer: 0478709610)
    let persoon3 = Personen(naam: "Devits", voorNaam: "Brian", foto: "brian.jpg", adres: "Molenstraat 23 1570 Vollezele", gpsCoordinatenLat: 50.7661342, gpsCoordinatenLong: 4.0265190000000075,telefoonNummer: 04995512362)
    let persoon4 = Personen(naam: "Amerijckx", voorNaam: "Kobe", foto: "kobe.jpg", adres: "Vollezelstraat 97 1755 Oetingen", gpsCoordinatenLat: 50.7688826, gpsCoordinatenLong: 4.049691400000029, telefoonNummer: 0486210707)
    let persoon5 = Personen(naam: "Tordeur", voorNaam: "Kelly", foto: "kelly.jpg", adres: "Gaasbeekstraat 1 1600 Oudenaken", gpsCoordinatenLat: 50.780032959999999, gpsCoordinatenLong: 4.197631099999967,telefoonNummer: 0478709610)
    let persoon6 = Personen(naam: "Devits", voorNaam: "Brian", foto: "brian.jpg", adres: "Molenstraat 23 1570 Vollezele", gpsCoordinatenLat: 50.7661342, gpsCoordinatenLong: 4.0265190000000075,telefoonNummer: 04995512362)

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(personenLijst.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! viewControllerTableViewCell
        cell.myImage.image = UIImage(named: personenLijst[indexPath.row].foto)
        cell.labelNaam.text = personenLijst[indexPath.row].naam
        cell.labelVoorNaam.text = personenLijst[indexPath.row].voorNaam
        
        return (cell)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        personenLijst.append(persoon1)
        personenLijst.append(persoon2)
        personenLijst.append(persoon3)
        personenLijst.append(persoon4)
        personenLijst.append(persoon5)
        personenLijst.append(persoon6)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
