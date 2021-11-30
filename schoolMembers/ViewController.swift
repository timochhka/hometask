//
//  ViewController.swift
//  schoolMembers
//
//  Created by Тимур Рахимкулов on 29.11.2021.
//

import UIKit

class ViewController: UIViewController {
    let gapp: CGFloat = 35
    
    
    struct pupils {
        let name: String
        let age: Int
        let schoolNumber: Int
    }
    
    let firstNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Имя ученика"
        return label
    }()
    
    let ageOfStudent: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Сколько ученику лет"
        return label
    }()
    
    let numberOfSchool: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Номер школы"
        return label
    }()
    
    let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let ageOfStudentTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Возраст"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let numberOfSchoolTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Номер школы"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.backgroundColor = .purple
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        return button
    }()
  
    lazy var nameInput = InputWithLabel.inputWithLabelGenerate(label: firstNameLabel, textField: firstNameTextField)
    lazy var ageOfStudentInput = InputWithLabel.inputWithLabelGenerate(label: ageOfStudent, textField: ageOfStudentTextField)
    lazy var numberOfSchoolInput = InputWithLabel.inputWithLabelGenerate(label: numberOfSchool, textField: numberOfSchoolTextField)
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameInput, ageOfStudentInput,numberOfSchoolInput, button])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = NSLayoutConstraint.Axis.vertical
        stack.distribution = .fillEqually
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    private func setupUI() {
        addSubviews()
        setConstraits()
    }
    
    private func addSubviews() {
        view.addSubview(stack)
    }
    
    private func setConstraits() {
        let gap: CGFloat = 30
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.topAnchor, constant: gap),
            stack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: gap),
            stack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -gap),
            stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -gap)
        ])
    }
    @objc private func buttonDidTapped() {
        var message: String = " "
        var pupil: String = ""
        if let text = firstNameTextField.text {
            message.append(contentsOf: "Name: \(text)\n")
        }
        
        if let text = ageOfStudentTextField.text {
            message.append(contentsOf: "Age: \(text)\n")
        }
        
        if let text = numberOfSchool.text {
            message.append(contentsOf: "School: \(text)\n")
        }
        
    }
    
}
