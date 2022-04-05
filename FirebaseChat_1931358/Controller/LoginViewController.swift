//
//  LoginViewController.swift
//  FirebaseChat_1931358
//
//  Created by Matheus Cadena on 2022-04-05.
//

import UIKit

class LoginViewController: BaseViewController {

    //Declaration of Outlets
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        applyContraints()

    }
    
    func applyContraints()
    {
        self.view.addSubviews(imgLogo, txtEmail, txtPassword, btnSignIn)
        
        imgLogo.translatesAutoresizingMaskIntoConstraints = false
        imgLogo.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imgLogo.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        imgLogo.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imgLogo.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        
        txtEmail.translatesAutoresizingMaskIntoConstraints = false
        txtEmail.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        txtEmail.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        txtEmail.topAnchor.constraint(equalTo: self.imgLogo.bottomAnchor, constant: 20).isActive = true
        txtEmail.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        txtPassword.translatesAutoresizingMaskIntoConstraints = false
        txtPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        txtPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        txtPassword.topAnchor.constraint(equalTo: self.txtEmail.bottomAnchor, constant: 20).isActive = true
        txtPassword.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        btnSignIn.translatesAutoresizingMaskIntoConstraints = false
        btnSignIn.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        btnSignIn.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        btnSignIn.topAnchor.constraint(equalTo: self.txtPassword.bottomAnchor, constant: 20).isActive = true
        btnSignIn.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.10).isActive = true
        
    }
    
    @objc func testingLoadingMessage()
    {
        loading()
    }
    
    @IBAction func btnSignInTouchUp(_ sender: Any)
    {
        loading("Loading, please wait...")
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(testingLoadingMessage), userInfo: nil, repeats: false)
        
        
        return
//        guard let emailInput = txtEmail.text, txtEmail.text != "" else
//        {
//            txtEmail.shakeWith(btnSignIn)
//            return
//        }
//        guard let passwordInput = txtPassword.text, txtPassword.text!.count >= 6 else
//        {
//            txtPassword.shakeWith(btnSignIn)
//            return
//        }
//        Authentication.signIn(email: emailInput, password: passwordInput)
//
        
        
    }
    
}
