import UIKit

//MARK: - Protocol - Interface
protocol MyProtocol {
    var degisken: Int {get set}
    
    func metod1()
    func metod2() -> String
    
}

class ClassA: MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
    
}

let classA = ClassA()
print(classA.degisken)
classA.metod1()
print(classA.metod2())


//MARK: - Extension
extension Int {
    func carp(sayi: Int) -> Int {
        return self * sayi
    }
}

let sonuc = 5.carp(sayi: 3)
print("Sonuç : \(sonuc)")

//MARK: - Closure

