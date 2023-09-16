import UIKit

var numaralar = [10,20,30]
var meyveler = [String]()

//MARK: - Veri Ekleme
meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")
print(meyveler)

//MARK: - Güncelleme
meyveler[0] = "Yeni elma"
print(meyveler)

//MARK: - Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//MARK: - Veri okuma
let meyve = meyveler[2]
print(meyve)

print("Boş Kontrol : \(meyveler.isEmpty)")
print("Boyut       : \(meyveler.count)")
print("İlk eleman  : \(meyveler.first!)")
print("Son eleman  : \(meyveler.last!)")
print("İçeriyor mu : \(meyveler.contains("Muzx"))")
print("İndeks bulma: \(meyveler.firstIndex(of: "Muz")!)")

for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)


//MARK: - Nesne tabanlı
class Yemekler {
    var id: Int?
    var ad: String?
    var fiyat: Int?
    var puan: Double?
    
    init(id: Int, ad: String, fiyat: Int, puan: Double ) {
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
        self.puan = puan
    }
}

var y1 = Yemekler(id: 1, ad: "Köfte", fiyat: 80, puan: 4.6)
var y2 = Yemekler(id: 2, ad: "Ayran", fiyat: 30, puan: 3.8)
var y3 = Yemekler(id: 3, ad: "Tiramisu", fiyat: 60, puan: 4.3)

var yemekListesi = [Yemekler]()
yemekListesi.append(y1)
yemekListesi.append(y2)
yemekListesi.append(y3)

for y in yemekListesi {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

//Filtreleme
print("-----------Filtreleme 1-------------")
var f1 = yemekListesi.filter({$0.fiyat! > 50 })
for y in f1 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("-----------Filtreleme 2-------------")
var f2 = yemekListesi.filter({$0.ad!.contains("a") })
for y in f2 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

// Sorting
print("--------------Fiyat : Azalan--------------")
var s1 = yemekListesi.sorted(by: {$0.fiyat! > $1.fiyat!})
for y in s1 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------------Fiyat : Artan--------------")

var s2 = yemekListesi.sorted(by: {$0.fiyat! < $1.fiyat!})
for y in s2 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------------Puan : Azalan--------------")
var s3 = yemekListesi.sorted(by: {$0.puan! > $1.puan!})
for y in s3 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------------Puan : Artan--------------")

var s4 = yemekListesi.sorted(by: {$0.puan! < $1.puan!})
for y in s4 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------------Ad : Azalan--------------")
var s5 = yemekListesi.sorted(by: {$0.ad! > $1.ad!})
for y in s5 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}

print("--------------Ad : Artan--------------")

var s6 = yemekListesi.sorted(by: {$0.ad! < $1.ad!})
for y in s6 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat : \(y.fiyat!) ₺ - Puan : \(y.puan!)")
}
