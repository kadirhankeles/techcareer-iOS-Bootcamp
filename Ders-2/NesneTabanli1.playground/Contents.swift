import UIKit

class Urunler {
    var renk: String?
    var fiyat: Int?
    var stokDurum: Bool?
    
    init() {
        print("Boş constructor")
    }
    
    init(renk: String, fiyat: Int, stokDurum: Bool) {
        self.renk = renk
        self.fiyat = fiyat
        self.stokDurum = stokDurum
    }
    
    func satisBaslat() { //side effect
        stokDurum = true
    }
    
    func satisDurdur() {
        stokDurum = false
    }
    
    func fiyatArtis(kacFiyat: Int) {
        fiyat! += kacFiyat
    }
    
    func fiyatAzalis(kacFiyat: Int) {
        fiyat! -= kacFiyat
    }
    
    func bilgiAl() {
        print("--------------------")
        print("Renk       : \(renk!)")
        print("Fiyat      : \(fiyat!) ₺")
        print("Stok Durum : \(stokDurum!)")
    }
}

//MARK: - Nesne oluşturma
let tv = Urunler(renk: "Siyah", fiyat: 10000, stokDurum: true)

tv.bilgiAl()

tv.renk = "Siyah"
tv.fiyat = 10000
tv.stokDurum = true

tv.bilgiAl()
tv.satisDurdur()
tv.bilgiAl()
tv.fiyatArtis(kacFiyat: 1000)
tv.bilgiAl()
tv.fiyatAzalis(kacFiyat: 2000)
tv.bilgiAl()


let saat = Urunler()
saat.renk = "Metalik"
saat.fiyat = 5000
saat.stokDurum = false

saat.bilgiAl()
saat.satisBaslat()
saat.bilgiAl()
saat.fiyatArtis(kacFiyat: 2000)
saat.bilgiAl()
saat.fiyatAzalis(kacFiyat: 1000)
saat.bilgiAl()
