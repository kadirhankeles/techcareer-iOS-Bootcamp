//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Kadirhan Keles on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var labelSwitch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if mSwitch.isOn {
            labelSwitch.text = "AÇIK"
        } else {
            labelSwitch.text = "KAPALI"
        }
    }

    @IBAction func buttonOku(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu-resim")
    }
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun-resim")
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum: \(mSwitch.isOn)")
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            labelSwitch.text = "AÇIK"
        } else {
            labelSwitch.text = "KAPALI"
        }
        
    }
    
}

