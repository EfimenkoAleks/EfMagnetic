//
//  PurpleButton.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class PurpleButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 25
        layer.masksToBounds = true
        backgroundColor = Colors.purple.color
    }
    
    func setTitleButton(_ title: String) {
        titleLabel?.text = title
        titleLabel?.font =  UIFont(name: "Roboto", size: 20)
        titleLabel?.textColor = Colors.white.color
    }
}

