//
//  PersoonDetailViewController.swift
//  Werkstuk1
//
//  Created by student on 15/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class PersoonDetailViewController: UIViewController {

    @IBOutlet weak var persoonImage: UIImageView!
    @IBOutlet weak var persoonNaam: UILabel!
    @IBOutlet weak var persoonAdres: UILabel!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persoonImage.image = UIImage(named: personenLijst[1].foto)
        persoonNaam.text = personenLijst[1].voorNaam + " " + personenLijst[1].naam
        persoonAdres.text = personenLijst[1].adres
        latitude.text = String(personenLijst[1].gpsCoordinatenLat)
        longitude.text = String(personenLijst[1].gpsCoordinatenLong)

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
