//
//  SearchLabel.swift
//  EfMagnetic
//
//  Created by Aleksandr on 02.04.2024.
//

import UIKit

class SearchLabel: UILabel {
    
    enum SearchEvent {
        case search , stop
        
        var value: String {
            switch self {
            case .search: return "Search checking"
            case .stop: return "Stop"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        textColor = Colors.white.color
    }
    
    func setTitle(_ title: SearchEvent) {
        text = title.value
    }
}
