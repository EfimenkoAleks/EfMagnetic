//
//  MagneticViewController.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class MagneticViewController: BaseController {

    @IBOutlet private weak var arrow: UIImageView!
    @IBOutlet private weak var searchButton: PurpleButton!
  
    var coordinator: MagneticCoordinatorProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confirure()
    }
    
    @IBAction private func didTapButtonAction(_ sender: UIButton) {
    }
}

private extension MagneticViewController {
    
    func confirure() {
        createTitle(Titles.magnetic.title)
        searchButton.setTitleButton("Search")
    }
}
