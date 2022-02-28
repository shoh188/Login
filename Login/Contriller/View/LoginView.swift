//
//  LoginView.swift
//  Login
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import UIKit

protocol LoginViewProtocol {
    func didSingInClick()
    func didSingUpClick()
}


class LoginView: UIView {
    
    var delegate: LoginViewProtocol?
    
    private lazy var backgroundLogin: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "backgroundLoginOne")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "HELLO"
        label.textColor = UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 60)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum is simply dummy"
        label.textColor = UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    private lazy var buttonSingUp: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Sign Up"
        config.baseBackgroundColor = .white
        config.cornerStyle = .capsule
        config.baseForegroundColor = UIColor(red: 0.08, green: 0.05, blue: 0.26 , alpha: 1.00)
        let button = UIButton(configuration: config, primaryAction: nil)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(clickSingUpButton), for: UIControl.Event.touchUpInside)
        return button
    }()

    
    init (){
        super.init(frame: .zero)
        addSubViews()
        constrainBackgroundLogin()
        constrainTitlelabel()
        constrainSubTitlelabel()
        constrainButtonSingIn()
        constrainButtonSingUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubViews(){
        addSubview(backgroundLogin)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(buttonSingIn)
        addSubview(buttonSingUp)
    }
    
    private func constrainBackgroundLogin(){
        let constraint = [
            backgroundLogin.topAnchor.constraint(equalTo: topAnchor),
            backgroundLogin.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundLogin.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundLogin.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }

    private func constrainTitlelabel(){
        let constraint = [
            titleLabel.centerYAnchor.constraint(equalTo: topAnchor, constant: 105),
            titleLabel.centerXAnchor.constraint(equalTo: leftAnchor, constant: 110)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainSubTitlelabel(){
        let constraint = [
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -10),
            subTitleLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor, constant: 0)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonSingIn(){
        let constraint = [
            buttonSingIn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -110),
            buttonSingIn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            buttonSingIn.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            buttonSingIn.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainButtonSingUp(){
        let constraint = [
            buttonSingUp.topAnchor.constraint(equalTo: buttonSingIn.bottomAnchor, constant: 10),
            buttonSingUp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            buttonSingUp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            buttonSingUp.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    @objc private func clickSingInButton() {
        delegate?.didSingInClick()
    }
    
    @objc private func clickSingUpButton() {
        delegate?.didSingUpClick()
    }
}
