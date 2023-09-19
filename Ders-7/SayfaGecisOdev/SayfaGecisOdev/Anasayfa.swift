//
//  ViewController.swift
//  SayfaGecisOdev
//
//  Created by Kadirhan Keles on 19.09.2023.
//

import UIKit

class Anasayfa: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonA(_ sender: Any) {
        performSegue(withIdentifier: "sayfaA", sender: nil)
    }
    
    @IBAction func buttonX(_ sender: Any) {
        performSegue(withIdentifier: "sayfaX", sender: nil)
    }
    
}

