//
//  Colors.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

enum Colors {
    case black
    case purple
    case white
    case lilac
}

extension Colors {
    
    var color: UIColor {
        switch self {
        case .black: return UIColor(hexString: "#070615")
        case .purple: return UIColor(hexString: "#6D59D3")
        case .white: return UIColor(hexString: "#FFFFFF")
        case .lilac: return UIColor(hexString: "#E1DBFF")
        }
    }
}
