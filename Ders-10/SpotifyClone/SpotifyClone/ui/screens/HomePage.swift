//
//  Anasayfa.swift
//  SpotifyClone
//
//  Created by Kadirhan Keles on 25.09.2023.
//

import UIKit

class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.selectedIndex = 1
    }

}
