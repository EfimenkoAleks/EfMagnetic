//
//  BaseController.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

class BaseController: UIViewController {
  
    init() {
        super.init(nibName: nil, bundle: nil)
        
        setBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func createTitle(_ title: String = "") {
        let customTitleLabel = TitleLabel(title: title)
      
        let hStack = UIStackView(arrangedSubviews: [customTitleLabel])
        hStack.alignment = .center
        navigationItem.titleView = hStack
    }
    
    private func setBackground() {
        self.view.backgroundColor = Colors.black.color
    }
}
