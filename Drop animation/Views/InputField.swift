//
//  InputField.swift
//  Drop animation
//
//  Created by Andrei Sushkou on 18.08.23.
//

import UIKit

final class InputField: UIView {
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let elasticView = ElasticView()
    
    private let inputTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(name: String) {
        self.init()
        nameLabel.text = name
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupViews() {
        nameLabel.textColor = .gray
        addSubview(nameLabel)
        addSubview(elasticView)
        inputTextField.tintColor = .green
        inputTextField.backgroundColor = .darkGray
        inputTextField.translatesAutoresizingMaskIntoConstraints = false
        addSubview(inputTextField)
    }
}

extension InputField {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            elasticView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2),
            elasticView.leadingAnchor.constraint(equalTo: leadingAnchor),
            elasticView.trailingAnchor.constraint(equalTo: trailingAnchor),
            elasticView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            inputTextField.centerXAnchor.constraint(equalTo: elasticView.centerXAnchor),
            inputTextField.centerYAnchor.constraint(equalTo: elasticView.centerYAnchor),
            inputTextField.heightAnchor.constraint(equalTo: elasticView.heightAnchor, multiplier: 0.9),
            inputTextField.widthAnchor.constraint(equalTo: elasticView.widthAnchor, multiplier: 0.9)
           
        ])
    }
}
