//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Kadirhan Keles on 24.09.2023.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTiklandi(indexPath: IndexPath)
}

class UrunlerHucre: UITableViewCell {
    
    @IBOutlet weak var arkaPlan: UIView!
    @IBOutlet weak var urunImageView: UIImageView!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
}
