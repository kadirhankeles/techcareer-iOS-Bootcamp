//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Kadirhan Keles on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOyunEkrani.text = "Merhaba"
        
    }

    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true) // bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true) // var olan anasayfaya döner
    }
    
    @IBAction func buttonBitti(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)

    }
    
}
