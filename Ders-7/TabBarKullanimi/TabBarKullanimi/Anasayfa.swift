//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Kadirhan Keles on 18.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Update"
        }
        
        let appearence = UITabBarAppearance()
        appearence.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemAppearance: appearence.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearence.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearence.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearence
        tabBarController?.tabBar.scrollEdgeAppearance = appearence
    }

    func renkDegistir(itemAppearance: UITabBarItemAppearance) {
        //Seçili durum
        itemAppearance.selected.iconColor = .systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = .systemMint
        //Seçili olmayan durum
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = .lightGray
    }

}

