//
//  SayfaA.swift
//  SayfaGecisOdev
//
//  Created by Kadirhan Keles on 19.09.2023.
//

import UIKit

class SayfaA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func buttonB(_ sender: Any) {
        performSegue(withIdentifier: "sayfaB", sender: nil)
    }
    

}
