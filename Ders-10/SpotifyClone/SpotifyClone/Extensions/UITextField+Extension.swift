//
//  UITextField+Extensions.swift
//  SpotifyClone
//
//  Created by Kadirhan Keles on 25.09.2023.
//

import UIKit

extension UITextField {
    
    func setupLeftSideImage(systemName: String) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView.image = UIImage(systemName: systemName)
        imageView.contentMode = .scaleAspectFill
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 40))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
        self.tintColor = .black
        self.attributedPlaceholder = NSAttributedString(
            string: "Ne dinlemek istiyorsun?",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
    }
}
