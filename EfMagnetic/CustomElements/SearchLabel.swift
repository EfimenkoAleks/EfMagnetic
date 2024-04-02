//
//  SearchLabel.swift
//  EfMagnetic
//
//  Created by Aleksandr on 02.04.2024.
//

import UIKit

class SearchLabel: UILabel {
    
    enum SearchEvent {
        case search
        case value(Int)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        textColor = Colors.white.color
    }
    
    func setTitle(_ title: SearchEvent) {
        switch title {
        case .search:
            text = "Search checking"
        case .value(let vol):
            text = "\(vol) µT"
        }
    }
}
