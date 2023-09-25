//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Kadirhan Keles on 21.09.2023.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonKaydet(_ sender: UIButton) {
        if let ad = tfKisiAd.text, let tel = tfKisiTel.text {
            kaydet(kisi_ad: ad, kisi_tel: tel)
        }
    }
    
    func kaydet(kisi_ad:String, kisi_tel:String) {
        print("Kişi kaydet: \(kisi_ad) - \(kisi_tel)")
    }
}
