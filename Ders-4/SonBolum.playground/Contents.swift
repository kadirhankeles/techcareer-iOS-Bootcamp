import UIKit

//Guard = if'in tersi

func kisiTanima1(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba ahmet")
    } else {
        print("Tanınmayan kişi")
    }
}

kisiTanima1(ad: "Ahmetx")

func kisiTanima2(ad:String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanima2(ad: "Ahmet")
//Try catch

//1. Compile error
let sayi = 10
//sayi = 50

//2.Runtime error: Exception
enum Hatalar: Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1: Int, sayi2: Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch{
    print("Hata oluştu")
}
