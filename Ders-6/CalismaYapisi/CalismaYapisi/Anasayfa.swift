//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Kadirhan Keles on 14.09.2023.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnasayfa.text = "\(sayac)"
    }

    @IBAction func buttonTikla(_ sender: UIButton) {
        sayac += 1
        labelAnasayfa.text = "\(sayac)"
        if sayac == 5 {
            performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        }
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
    }
}

