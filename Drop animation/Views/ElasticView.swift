//
//  ElasticView.swift
//  Drop animation
//
//  Created by Andrei Sushkou on 18.08.23.
//

import UIKit

class ElasticView: UIView {
    
    private let topControlPointView = UIView()
    private let leftControlPointView = UIView()
    private let rightControlPointView = UIView()
    private let bottomControlPointView = UIView()
    
    private let elasticShape = CAShapeLayer()
    
    override func layoutSubviews() {
        setupComponents()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupComponents() {
        elasticShape.fillColor = UIColor.white.cgColor
        elasticShape.path = UIBezierPath(rect: bounds).cgPath
        layer.addSublayer(elasticShape)
        
        for controlPoint in [topControlPointView,
                             leftControlPointView,
                             rightControlPointView,
                             bottomControlPointView] {
            addSubview(controlPoint)
            controlPoint.frame = CGRect(x: 0, y: 0, width: 5, height: 5)
            controlPoint.backgroundColor = .blue
        }
        
        positionControlPoint()
    }
    
    private func positionControlPoint() {
        topControlPointView.center = CGPoint(x: bounds.minX, y: 0)
        leftControlPointView.center = CGPoint(x: 0, y: bounds.midY)
        bottomControlPointView.center = CGPoint(x: bounds.midX, y: bounds.maxY)
        rightControlPointView.center = CGPoint(x: bounds.maxX, y: bounds.midY)
    }
}
