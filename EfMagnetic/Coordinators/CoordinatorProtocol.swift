//
//  CoordinatorProtocol.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var cildren: [Coordinator] { get set }
}
