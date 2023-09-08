import UIKit

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


class Fonksiyonlar {
    //void : geri dönüş değeri olmayan
    func selamla1() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //return : geri dönüş değeri olan
    func selamla2() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    func selamla3(isim: String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    func carpma(sayi1: Int, sayi2: Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1: Double, sayi2: Double) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1: Int, sayi2: Int, isim: String) {
        print("Çarpma : \(sayi1 * sayi2) - İşlem Yapan : \(isim)")
    }
}

let f = Fonksiyonlar()
f.selamla1()

let gelenSonuc = f.selamla2()
print("Gelen Sonuç : \(gelenSonuc)")

f.selamla3(isim: "Kadirhan")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 10, sayi2: 10, isim: "Kadirhan")

class ASinifi {
    static var x = 10
    
    static func metod() {
        print("Metod çalıştı")
    }
}

let a = ASinifi()

//print(a.x)
//a.metod()

//Virtual object - Sanal nesne - nameless object
//print(ASinifi().x)
//ASinifi().x

print(ASinifi.x)
ASinifi.metod()

//static = companion object

//MARK: - Enum
enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet: Int) {
    switch boyut {
        case .kucuk: print("Ücret : \(adet * 18) ₺")
        case .orta: print("Ücret : \(adet * 25) ₺")
        case .buyuk: print("Ücret : \(adet * 47) ₺")
    }
}

ucretHesapla(boyut: .orta, adet: 1500)

// Composition

class Kategoriler {
    var kategori_id: Int?
    var kategori_ad: String?
    
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init(yonetmen_id: Int, yonetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id: Int?
    var film_ad: String?
    var film_yil: Int?
    var kategori: Kategoriler? //composition
    var yonetmen: Yonetmenler? //composition
    
    init(film_id: Int, film_ad: String, film_yil: Int, kategori: Kategoriler, yonetmen: Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)

print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film yıl : \(f1.film_yil!)")
print("Film Kategori : \(f1.kategori!.kategori_ad!)")
print("Film Yönetmen : \(f1.yonetmen!.yonetmen_ad!)")
