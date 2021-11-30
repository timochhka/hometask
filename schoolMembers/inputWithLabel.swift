//
//  inputWithLabel.swift
//  schoolMembers
//
//  Created by Тимур Рахимкулов on 29.11.2021.
//

import Foundation
import UIKit

class InputWithLabel: UIView {
    static func inputWithLabelGenerate(label: UILabel, textField: UITextField) -> InputWithLabel {
        let inputView = InputWithLabel()
        let gap: CGFloat = 20
        inputView.addSubview(label)
        inputView.addSubview(textField)
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        inputView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            label.leftAnchor.constraint(equalTo: inputView.leftAnchor, constant: gap),
            label.topAnchor.constraint(equalTo: inputView.topAnchor, constant: gap),
            label.bottomAnchor.constraint(equalTo: textField.topAnchor,constant: -gap * 0.1),
            textField.leftAnchor.constraint(equalTo: inputView.leftAnchor, constant: gap),
            textField.bottomAnchor.constraint(equalTo: inputView.bottomAnchor, constant: -gap),
            textField.rightAnchor.constraint(equalTo: inputView.rightAnchor, constant: -gap),
            textField.heightAnchor.constraint(equalToConstant: 40)
        ])
        return inputView
    }
}
