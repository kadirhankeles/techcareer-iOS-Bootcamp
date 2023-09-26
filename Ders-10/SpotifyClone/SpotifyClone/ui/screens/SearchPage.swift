//
//  ViewController.swift
//  SpotifyClone
//
//  Created by Kadirhan Keles on 25.09.2023.
//

import UIKit

class SearchPage: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var textField: UITextField!
    
    var categoryList = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .clear
        
        textField.setupLeftSideImage(systemName: "magnifyingglass")
        categoryInput()
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumLineSpacing = 16
        design.minimumInteritemSpacing = 16
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik - 36) / 2
        design.itemSize = CGSize(width: itemGenislik, height: itemGenislik * 0.6)
        collectionView.collectionViewLayout = design
        
        tabBarController?.tabBar.barTintColor = UIColor.white.withAlphaComponent(1)



    }
    
    func categoryInput() {
        let c1 = Category(id: 0, name: "Podcast'ler", image: "1", colorName: "color1")
        let c2 = Category(id: 1, name: "Yakınındaki\ncanlı\netkinlikler", image: "2", colorName: "color2")
        let c3 = Category(id: 2, name: "Senin için\nHazırlandı", image: "3", colorName: "color3")
        let c4 = Category(id: 3, name: "Yeni Çıkanlar", image: "4", colorName: "color4")
        let c5 = Category(id: 4, name: "Pop", image: "5", colorName: "color5")
        let c6 = Category(id: 5, name: "Hip Hop", image: "6", colorName: "color6")
        let c7 = Category(id: 6, name: "Ruh Hali", image: "7", colorName: "color7")
        let c8 = Category(id: 7, name: "Popüler", image: "8", colorName: "color8")
        let c9 = Category(id: 8, name: "Listeler", image: "9", colorName: "color9")
        let c10 = Category(id: 9, name: "Dans ve\nElektronik", image: "10", colorName: "color10")
        let c11 = Category(id: 10, name: "Rock", image: "11", colorName: "color11")
        let c12 = Category(id: 11, name: "Indie", image: "12", colorName: "color12")
        let c13 = Category(id: 12, name: "Fitness", image: "13", colorName: "color13")
        let c14 = Category(id: 13, name: "Keşfet", image: "14", colorName: "color14")
        let c15 = Category(id: 14, name: "Country", image: "15", colorName: "color15")
        let c16 = Category(id: 15, name: "RnB", image: "16", colorName: "color16")
        let c17 = Category(id: 16, name: "K-pop", image: "17", colorName: "color17")
        let c18 = Category(id: 17, name: "Chill", image: "18", colorName: "color18")
        let c19 = Category(id: 18, name: "Uyku", image: "19", colorName: "color19")
        let c20 = Category(id: 19, name: "Parti", image: "20", colorName: "color20")
        let c21 = Category(id: 20, name: "Evde", image: "21", colorName: "color21")
        let c22 = Category(id: 21, name: "EQUAL", image: "22", colorName: "color22")
        let c23 = Category(id: 22, name: "Dönem\nmüzikleri", image: "23", colorName: "color23")
        let c24 = Category(id: 23, name: "Aşk", image: "24", colorName: "color24")
        let c25 = Category(id: 24, name: "Metal", image: "25", colorName: "color25")
        categoryList.append(c1)
        categoryList.append(c2)
        categoryList.append(c3)
        categoryList.append(c4)
        categoryList.append(c5)
        categoryList.append(c6)
        categoryList.append(c7)
        categoryList.append(c8)
        categoryList.append(c9)
        categoryList.append(c10)
        categoryList.append(c11)
        categoryList.append(c12)
        categoryList.append(c13)
        categoryList.append(c14)
        categoryList.append(c15)
        categoryList.append(c16)
        categoryList.append(c17)
        categoryList.append(c18)
        categoryList.append(c19)
        categoryList.append(c20)
        categoryList.append(c21)
        categoryList.append(c22)
        categoryList.append(c23)
        categoryList.append(c24)
        categoryList.append(c25)
        
    }

}

extension SearchPage: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        let category = categoryList[indexPath.row]
        cell.categoryLabel.text = category.name
        
        cell.categoryImage.image = UIImage(named: category.image!)
        cell.categoryImage.transform = CGAffineTransform(rotationAngle: .pi / 6)
        cell.categoryImage.layer.cornerRadius = 10
        
        cell.backgroundColor = UIColor(named: category.colorName!)
        cell.layer.cornerRadius = 5

        return cell
    }
    
}

