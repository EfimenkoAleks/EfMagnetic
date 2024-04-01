//
//  Titles.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import Foundation

enum Titles {
    case magnetic
}

extension Titles {
    
    var title: String {
        switch self {
        case .magnetic: return "Magnetic Detection"
        }
    }
}
