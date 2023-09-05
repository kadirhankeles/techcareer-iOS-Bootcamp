import UIKit

var ogrenciAdi = "Ahmet"
var ogrenciYas = 18
var ogrenciBoy = 1.78
var ogrenciBasharf = "A"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)
print("-------------------------")

var urun_id:Int = 3416
var urun_adi:String = "Kol Saati"
var urun_adet:Double = 100
var urun_fiyat:Double = 149.99
var urun_tedarikci:String = "Rolex"

print("Ürün id : \(urun_id)")
print("Ürün adı : \(urun_adi)")
print("Ürün adet : \(urun_adet)")
print("Ürün fiyat : \(urun_fiyat) ₺")
print("Ürün tedarikçi : \(urun_tedarikci)")
print("-------------------------")

//MARK: - Constant - Sabitler
//Swift - let & Kotlin - val & Dart - final

var sayi = 10
print(sayi)
sayi = 99
print(sayi)

let numara = 100
print(numara)
//numara = 200
print("-------------------------")
//MARK: - Type Casting

//sayısaldan sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//sayısaldan metine

var sonuc3 = String(i) //"42"
var sonuc4 = String(d) //"56.78"

//metinden sayısala

var yazi = "34"

if let sonuc5 = Int(yazi) {
    print(sonuc5)
} else {
    print("Sayıya dönüştürülemedi")
}

