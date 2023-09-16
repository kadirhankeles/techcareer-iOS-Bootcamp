//
//  ViewController.swift
//  SmartWatchDesign
//
//  Created by Kadirhan Keles on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saatImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func siyahButton(_ sender: Any) {
        saatImage.image = UIImage(named: "siyahSaat")
    }
    @IBAction func beyazButton(_ sender: Any) {
        saatImage.image = UIImage(named: "beyazSaat")
    }
    @IBAction func maviButton(_ sender: Any) {
        saatImage.image = UIImage(named: "maviSaat")
    }
    

}

