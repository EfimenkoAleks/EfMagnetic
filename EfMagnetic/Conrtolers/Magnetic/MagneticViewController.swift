//
//  MagneticViewController.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class MagneticViewController: BaseController {

    @IBOutlet private weak var searchLabel: SearchLabel!
    @IBOutlet private weak var containerArrow: ClockView!
    @IBOutlet private weak var searchButton: PurpleButton!
  
    var coordinator: MagneticCoordinatorProtocol?
    
    let pointerLayer = CAShapeLayer()
        let borderLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confirure()
    }
    
    @IBAction private func didTapButtonAction(_ sender: UIButton) {
 
        containerArrow.isAnimated ? searchButton.setTitleButton(.search) : searchButton.setTitleButton(.stop)
        containerArrow.isAnimated ? searchLabel.setTitle(.search) : searchLabel.setTitle(.stop)
        containerArrow.isAnimated ? containerArrow.addAnimation(index: 4.0, start: false) : containerArrow.addAnimation(index: 4.0, start: true)
        
    }
}

private extension MagneticViewController {
    
    func confirure() {
        createTitle(Titles.magnetic.title)
        searchButton.setTitleButton(.search)
        searchLabel.setTitle(.search)
    }
}
