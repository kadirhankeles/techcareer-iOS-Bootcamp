//
//  SayfaX.swift
//  SayfaGecisOdev
//
//  Created by Kadirhan Keles on 19.09.2023.
//

import UIKit

class SayfaX: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaY2", sender: nil)
    }
    
}
