import UIKit

//MARK: - Optional

var str = "Hello"
var mesaj: String?

mesaj = "Merhaba"
if mesaj != nil {
    print(mesaj!)
} else {
    print("mesaj nil'dir")
}


//MARK: - Optional Binding

if let temp = mesaj { //nil ise false döner
    print(temp)
} else {
    print("mesaj nil'dir")
}
