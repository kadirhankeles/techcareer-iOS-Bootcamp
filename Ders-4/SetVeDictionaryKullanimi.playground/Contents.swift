import UIKit

//MARK: - Set - HashSet

var meyveler = Set<String>()

//Veri Ekleme
meyveler.insert("Elma")
meyveler.insert("Kiraz")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")
print(meyveler)

print("Boyut : \(meyveler.count)")
print("Boş Kontrol : \(meyveler.isEmpty)")

for meyve in meyveler {
    print("SOnuç : \(meyve)")
}

for (indeks, meyve) in meyveler.enumerated() {
    print("\(indeks). \(meyve)")
}

meyveler.remove("Muz")
meyveler.removeAll()

//MARK: - Dictionary - Map - HashMap
//Json veri modeli

var iller = [Int:String]()
//Veri Ekleme
iller[16] = "BURSA"
iller[34] = "İSTANBUL"
print(iller)

//Güncelleme
iller[16] = "YENİ BURSA"
print(iller)

//veri okuma
let il = iller[34]
print(il!)

for (anahtar, deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)
