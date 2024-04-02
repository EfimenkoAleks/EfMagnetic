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
    private let searchManager: MockMagneticManager = MockMagneticManager()
    
    let pointerLayer = CAShapeLayer()
        let borderLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confirure()
    }
    
    @IBAction private func didTapButtonAction(_ sender: UIButton) {
        let data = searchManager.createdata(containerArrow.isAnimated)
 
        containerArrow.isAnimated ? searchButton.setTitleButton(.search) : searchButton.setTitleButton(.stop)
        containerArrow.isAnimated ? searchLabel.setTitle(.search) : searchLabel.setTitle(.value(Int(data.rounded())))
        containerArrow.isAnimated ? containerArrow.addAnimation(index: data, start: false) : containerArrow.addAnimation(index: data, start: true)
        
    }
}

private extension MagneticViewController {
    
    func confirure() {
        createTitle(Titles.magnetic.title)
        searchButton.setTitleButton(.search)
        searchLabel.setTitle(.search)
    }
}
