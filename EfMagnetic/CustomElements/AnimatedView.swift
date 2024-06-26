//
//  AnimatedView.swift
//  EfMagnetic
//
//  Created by Aleksandr on 02.04.2024.
//

import UIKit

class AnimatedView: UIView {
    
    var isAnimated: Bool = false
    private var pointerLayer = CAShapeLayer()
    private var animation: CABasicAnimation?
    private let startValue: CGFloat = 0.0
    private let maxValue: CGFloat = CGFloat.pi
    private let maxSpeed: CGFloat = 0.2
    private let minSpeed: CGFloat = 1.0
    private let maxLoad: CGFloat = 100
    private let keyRotationAnimation: String = "rotationAnimation"
    private let keyRotationAnimationPath: String = "transform.rotation.z"
    
    override public init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        
        let imView = UIImageView(frame: CGRect(x: -5, y: bounds.midY - 16, width: 101, height: 32))
        imView.image = UIImage(named: "arrow")
        
        let path = CGMutablePath()
        path.move(to: CGPointMake(bounds.midX - 80, bounds.midY))
        path.addLine(to: CGPointMake(bounds.midX, bounds.midY))
        pointerLayer.path = path
        pointerLayer.frame = bounds
        pointerLayer.lineWidth = 8
        pointerLayer.strokeColor = UIColor.clear.cgColor
        pointerLayer.addSublayer(imView.layer)
        layer.addSublayer(pointerLayer)
    }
    
    func addAnimation(index: CGFloat, start: Bool) {
        let data = maxValue * index / maxLoad
        
        isAnimated = start == true ? true : false
        animation = CABasicAnimation(keyPath: keyRotationAnimationPath)
        animation?.fromValue = start == true ? startValue : data
        animation?.toValue = start == true ? data : startValue
        animation?.duration = start == true ? minSpeed : maxSpeed
        animation?.isCumulative = true
        animation?.fillMode = CAMediaTimingFillMode.forwards
        animation?.isRemovedOnCompletion = false
        guard let animation = animation else { return }
        pointerLayer.add(animation, forKey: keyRotationAnimation)
    }
}
