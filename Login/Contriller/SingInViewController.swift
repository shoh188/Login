//
//  SingInViewController.swift
//  Login
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import UIKit

class SingInViewController: UIViewController, SingInViewProtocol {
    
    lazy var myView = SingInView()
    
    func didSingInClick() {
        print ("Sing In click")
    }
    
    override func loadView() {
        myView.delegate = self
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
