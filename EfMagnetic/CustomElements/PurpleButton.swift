//
//  PurpleButton.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class PurpleButton: UIButton {
    
    enum SearchButtonEvent {
        case search , stop
        
        var value: String {
            switch self {
            case .search: return "Search"
            case .stop: return "Stop"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 25
        layer.masksToBounds = true
        backgroundColor = Colors.purple.color
    }
    
    func setTitleButton(_ title: SearchButtonEvent) {
        
        let mySelectedAttributedTitle = NSAttributedString(string: title.value,
                                                           attributes: [NSAttributedString.Key.foregroundColor : Colors.white.color, NSAttributedString.Key.font: UIFont(name: "Roboto", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .semibold)])
        setTitleColor(Colors.white.color, for: .normal)
        setAttributedTitle(mySelectedAttributedTitle, for: .normal)
    }
}
