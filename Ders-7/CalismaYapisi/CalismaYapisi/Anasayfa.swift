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
        //Sayfa açıldığında 1 KERE ÇALIŞIR
        print("Yaşam Döngüsü: viewDidLoad")
        labelAnasayfa.text = "\(sayac)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Sayfa HER göründüğünde
        //Sayfaya geri dönüşleride buradan takip edebiliriz
        super.viewWillAppear(animated)
        print("Yaşam Döngüsü: viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //Sayfa HER görünmez olduğunda çalışır, sayfadan ayrıldığında
        print("Yaşam Döngüsü: viewDidDisappear")
    }

    @IBAction func buttonTikla(_ sender: UIButton) {
        sayac += 1
        labelAnasayfa.text = "\(sayac)"
        if sayac == 5 {
           // performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        }
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler{ //Any (superclass) > String(Subclass) downcasting var.
                print("Veri: \(veri)")
                let gidilecekVC = segue.destination as! OyunEkrani // UIViewCOntroller > OyunEkrani (Subclass)
                gidilecekVC.kisiNesnesi = veri
            }
        }
    }
    
    @IBAction func buttonEkle(_ sender: Any) {
        print("Ekle tıklandı")
    }
    
    @IBAction func buttonCikis(_ sender: Any) {
        printContent("Çıkış tıklandı")
    }
    
    
}

