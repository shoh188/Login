//
//  LoginViewController.swift
//  Login
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import UIKit

final class LoginViewControlle: UIViewController, LoginViewProtocol{
    
    lazy var myView = LoginView()
    
    func didSingInClick() {
        let view = SingInViewController()
        navigationController?.pushViewController(view, animated:true)
    }
    
    func didSingUpClick() {
        let alert = UIAlertController(title: "Sing Up Click", message: "Sing Up Click", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func loadView() {
        myView.delegate = self
        view = myView
        //view = loaddteste()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loaddteste () -> UIView?{
        let bundle = Bundle(for: type(of:self))
        let nib = UINib(nibName: "teste", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
