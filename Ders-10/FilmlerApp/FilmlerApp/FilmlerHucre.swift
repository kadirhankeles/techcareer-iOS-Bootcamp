//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Kadirhan Keles on 24.09.2023.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTiklandi(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
    
    
}
