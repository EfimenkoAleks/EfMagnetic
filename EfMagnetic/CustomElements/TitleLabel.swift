//
//  TitleLabel.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class TitleLabel: UILabel {
    
    init(title: String, color: UIColor? = nil) {
        let frame: CGRect = CGRect(x: 0, y: 0, width: 250, height: 44)
        super.init(frame: frame)
        setTitle(title: title, color: color)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
       
    }
    
    func setTitle(title: String, color: UIColor? = nil) {
        text = title
        font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        textAlignment = .center
        textColor = .white
        if let color = color {
            textColor = color
        }
    }
}
