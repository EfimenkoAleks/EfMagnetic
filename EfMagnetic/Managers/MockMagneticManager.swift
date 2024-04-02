//
//  MockMagneticManager.swift
//  EfMagnetic
//
//  Created by Aleksandr on 02.04.2024.
//

import Foundation

class MockMagneticManager: NSObject {
    
    var data: CGFloat = 0
    private let minValue: CGFloat = 0
    private let maxValue: CGFloat = 100
    
    func createdata(_ isCreateNew: Bool) -> CGFloat {
        data = isCreateNew == false ? createNewValue() : data
        return data
    }
    
    private func createNewValue() -> CGFloat {
        data = CGFloat.random(in: minValue..<maxValue)
       return data
    }
}
