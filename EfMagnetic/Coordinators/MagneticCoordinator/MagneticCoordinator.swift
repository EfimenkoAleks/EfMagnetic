//
//  MagneticCoordinator.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class MagneticCoordinator: MagneticCoordinatorProtocol {
    
    init(with window: UIWindow?) {
        self.window = window
        
        startRoot()
    }
    
    var cildren: [Coordinator] = []
    var navigationController: UINavigationController?
    private var window: UIWindow?
    
    func startRoot() {
        guard let window = window else { return }
        let vc = MagneticViewController()
        vc.coordinator = self
        navigationController = UINavigationController(rootViewController: vc)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

extension MagneticCoordinator {
    
    func sm_eventOccurred(with type: MagneticCoordinatorEvent) {
        switch type {
        case .detail:
            break
            
        case .back:
            break
        }
    }
}
