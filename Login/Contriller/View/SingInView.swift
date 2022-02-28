//
//  SingInView.swift
//  Login
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import UIKit
protocol SingInViewProtocol{
    func didSingInClick()
}
class SingInView: UIView {
    
    var delegate: SingInViewProtocol?
    
    init (){
        super.init(frame: .zero)
        addSubView()
        constrainBackgound()
        constrainTextFieldEmail()
        constrainTextFieldPassword()
        constrainButtonSingIn()
        constrainButtonForgotPassword()
        constrainButtonLoginFacebook()
        constrainButtonLoginGoogle()
        constrainLabelSingUp()
        constrainButtonSingUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private lazy var background: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "backgroundSingIn")
        image.contentMode = .scaleToFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var textFieldEmail: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = UIColor(red: 0.93, green: 0.94, blue: 0.97, alpha: 1.00)
        textfield.text  = "  E-mail"
        textfield.textColor = UIColor(red: 0.71, green: 0.72, blue: 0.75, alpha: 1.00)
        textfield.layer.cornerRadius = 20
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = UIColor(red: 0.93, green: 0.94, blue: 0.97, alpha: 1.00)
        textfield.text  = "  Password"
        textfield.textColor = UIColor(red: 0.71, green: 0.72, blue: 0.75, alpha: 1.00)
        textfield.layer.cornerRadius = 20
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private lazy var buttonSingIn: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Sign In"
        config.baseBackgroundColor = UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00)
        config.cornerStyle = .capsule
        config.baseForegroundColor = UIColor.white
        let button = UIButton(configuration: config, primaryAction: nil)
        button.addTarget(self, action: #selector(clickSingInButton), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()
    
    private lazy var buttonForgotPassword: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password ?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()
    
    private lazy var buttonLoginFacebook: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00), for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 0.71, green: 0.72, blue: 0.75, alpha: 1.00)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()
    
    private lazy var buttonLoginGoogle: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00), for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 0.71, green: 0.72, blue: 0.75, alpha: 1.00)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()
    
    private lazy var labelSingUp: UILabel = {
        let label = UILabel()
        label.text = "Don`t have an account ?"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor(red: 0.71, green: 0.72, blue: 0.75, alpha: 1.00)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buttonSingUp: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.setTitleColor(UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private func addSubView() {
        addSubview(background)
        addSubview(textFieldEmail)
        addSubview(textFieldPassword)
        addSubview(buttonSingIn)
        addSubview(buttonForgotPassword)
        addSubview(buttonLoginFacebook)
        addSubview(buttonLoginGoogle)
        addSubview(labelSingUp)
        addSubview(buttonSingUp)
    }
    
    private func constrainBackgound(){
        let constrain = [
            background.topAnchor.constraint(equalTo: topAnchor),
            background.leftAnchor.constraint(equalTo: leftAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    private func constrainTextFieldEmail (){
        let constrain = [
            textFieldEmail.bottomAnchor.constraint(equalTo: topAnchor, constant: 310),
            textFieldEmail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textFieldEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        constrain.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainTextFieldPassword (){
        let constrain = [
            textFieldPassword.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 15),
            textFieldPassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textFieldPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        constrain.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonSingIn (){
        let constrain = [
            buttonSingIn.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
            buttonSingIn.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            buttonSingIn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            buttonSingIn.heightAnchor.constraint(equalToConstant: 40)
        ]
        constrain.forEach{(item)in
            item.isActive = true
        }
    }
    
    private func constrainButtonForgotPassword (){
        
        let constrain = [
            buttonForgotPassword.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonForgotPassword.topAnchor.constraint(equalTo: buttonSingIn.bottomAnchor, constant: 10)
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonLoginFacebook(){
        
        let constrain = [
            buttonLoginFacebook.topAnchor.constraint(equalTo: buttonForgotPassword.bottomAnchor, constant: 30),
            buttonLoginFacebook.heightAnchor.constraint(equalToConstant: 30),
            buttonLoginFacebook.leadingAnchor.constraint(equalTo: buttonSingIn.leadingAnchor, constant: 30),
            buttonLoginFacebook.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonLoginGoogle(){
        
        let constrain = [
            buttonLoginGoogle.topAnchor.constraint(equalTo: buttonForgotPassword.bottomAnchor, constant: 30),
            buttonLoginGoogle.heightAnchor.constraint(equalToConstant: 30),
            buttonLoginGoogle.trailingAnchor.constraint(equalTo: buttonSingIn.trailingAnchor, constant: -30),
            buttonLoginGoogle.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    private func constrainLabelSingUp(){
        let constrain = [
            labelSingUp.topAnchor.constraint(equalTo: buttonLoginFacebook.bottomAnchor, constant: 10),
            labelSingUp.leadingAnchor.constraint(equalTo: buttonLoginFacebook.leadingAnchor, constant: 7),
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonSingUp(){
        let constrain = [
            buttonSingUp.topAnchor.constraint(equalTo: buttonLoginGoogle.bottomAnchor, constant: 3),
            buttonSingUp.trailingAnchor.constraint(equalTo: buttonLoginGoogle.trailingAnchor, constant: -7),
        ]
        
        constrain.forEach{(item) in
            item.isActive = true
        }
    }
    
    @objc private func clickSingInButton() {
        delegate?.didSingInClick()
    }
}
