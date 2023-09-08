import UIKit

//MARK: - Soru 1
//Parametre olarak girilen dereceyi fahrenhiet'a dönüştürdükten sonra geri döndüren bir metod yazınız. F = C x 1.8 + 32

func dereceDonustur(derece: Double) -> Double {
    let fah = (derece * 1.8) + 32
    return fah
}

let sonucGoster1 = dereceDonustur(derece: 32)
print("\(sonucGoster1) °F")

//MARK: - Soru 2
//Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan bir metod yazınız.

func dikdortgenCevresi(kisaKenar: Int, uzunKenar: Int) {
    print("Dikdörtgenin Çevresi : \(2*(uzunKenar + kisaKenar))")
}

dikdortgenCevresi(kisaKenar: 25, uzunKenar: 13)

//MARK: - Soru 3
//Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.

func faktoriyelHesapla(sayi: Int) -> Int {
    var fak = 1
    for i in stride(from: sayi, through: 1, by: -1) {
        fak *= i
    }
    return fak
}

let sonucGoster2 = faktoriyelHesapla(sayi: 6)
print("Faktoriyel Cevap : \(sonucGoster2)")

//MARK: - Soru 4
//Parametre olarak girilen kelime içinde kaç adet a harfi olduğunu gösteren bir metod yazınız.

func harfSayisi(metin: String) -> Int {
    var toplamHarf = 0
    for harf in metin {
        if harf == "a" || harf == "A" {
            toplamHarf += 1
        }
    }
    return toplamHarf
}

let sonucGoster3 = harfSayisi(metin: "Merhaba Ben kadirhanA")
print("Metindeki a harfi sayısı : \(sonucGoster3)")

//MARK: - Soru 5
//Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp sonucu geri gönderen metod yazınız.
//• İç açılar toplamı = (Kenar sayısı - 2) x 180

func icAciHesapla(kenarSayisi: Int) -> Int {
    let icAciToplami = (kenarSayisi - 2) * 180
    return icAciToplami
}

let sonucGoster4 = icAciHesapla(kenarSayisi: 6)
print("İç açılar toplamı : \(sonucGoster4)")

//MARK: - Soru 6
/*
 Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
 1 günde 8 saat çalışılabilir.
 • Çalışma saat ücreti : 10 €
 • Mesai saat ücreti : 20 ₺
 • 160 saat üzeri mesai sayılır.
 */

func maasHesapla(gunSayisi: Int) -> Double {
    let calismaSuresi = 8
    let calismaSaatUcreti = 10
    let mesaiUcreti = 20
    let CalismaSiniri = 160
    var verilecekMaas = 0.0
    
    let toplamCalisma = gunSayisi * calismaSuresi
    
    if toplamCalisma > CalismaSiniri {
        let fazlaCalismaSaati = toplamCalisma - CalismaSiniri
        let toplamMesaiUcret = mesaiUcreti * fazlaCalismaSaati
        verilecekMaas = Double((CalismaSiniri * calismaSaatUcreti) + toplamMesaiUcret)
        return verilecekMaas
    } else {
        let calismaSaati = toplamCalisma * calismaSaatUcreti
        return Double(calismaSaati)
    }
}

let sonucGoster5 = maasHesapla(gunSayisi: 21)
print("Maaş : \(sonucGoster5)")

//MARK: - Soru 7
/*
Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
• 50 GB = 100 ₺
• Kota aşımından sonra her 1 GB, 4 ₺'dir.
*/

func kotaAsimi(kotaMiktar: Int) -> Double {
    let paketGB = 50
    let paketFiyat = 100
    let gbBasiUcret = 4
    var toplamOdenecekUcret = 0
    
    if kotaMiktar > paketGB {
        let asimMiktari = kotaMiktar - paketGB
        let asimUcreti = asimMiktari * gbBasiUcret
        toplamOdenecekUcret = paketFiyat + asimUcreti
        return Double(toplamOdenecekUcret)
    } else if kotaMiktar < paketGB {
        //Türkiye şartlarında azda kullansan söke söke alırlar ama biz adaletli olalım :d
        let paketGBBasi = paketFiyat / paketGB
        toplamOdenecekUcret = kotaMiktar * paketGBBasi
        return Double(toplamOdenecekUcret)
    } else {
        toplamOdenecekUcret = paketFiyat
        return Double(toplamOdenecekUcret)
    }
}

let sonucGoster6 = kotaAsimi(kotaMiktar: 49)
print("Ödenecek Tutar : \(sonucGoster6)")

