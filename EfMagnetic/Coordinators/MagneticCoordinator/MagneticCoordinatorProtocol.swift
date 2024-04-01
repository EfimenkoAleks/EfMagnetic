//
//  MagneticCoordinatorProtocol.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import Foundation

protocol MagneticCoordinatorProtocol: Coordinator {
    func startRoot()
    func sm_eventOccurred(with type: MagneticCoordinatorEvent)
}
