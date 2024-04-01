//
//  MagneticViewController.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class MagneticViewController: BaseController {

    var coordinator: MagneticCoordinatorProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confirure()
    }
}

private extension MagneticViewController {
    
    func confirure() {
        createTitle(Titles.magnetic.title)
    }
}
