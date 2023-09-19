//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Kadirhan Keles on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    var kisiNesnesi: Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOyunEkrani.text = "Merhaba"
        
        if let k = kisiNesnesi {
            labelOyunEkrani.text = "\(k.ad!) - \(k.yas!) - \(k.boy!) - \(k.bekar!) "
        }
    }

    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true) // bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true) // var olan anasayfaya döner
    }
    
    @IBAction func buttonBitti(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)

    }
    
}
