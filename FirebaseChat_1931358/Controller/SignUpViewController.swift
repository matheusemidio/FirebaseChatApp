//
//  SignUpViewController.swift
//  FirebaseChat_1931358
//
//  Created by Matheus Cadena on 2022-04-05.
//

import UIKit

class SignUpViewController: UIViewController {

    //Declaration of outlets
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyContraints()
    }

    func applyContraints()
    {
        self.view.addSubviews(txtFirstName, txtLastName, txtEmail, txtPassword, btnSignUp)
        
        txtFirstName.translatesAutoresizingMaskIntoConstraints = false
        txtFirstName.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        txtFirstName.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        txtFirstName.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        txtFirstName.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        txtLastName.translatesAutoresizingMaskIntoConstraints = false
        txtLastName.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        txtLastName.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        txtLastName.topAnchor.constraint(equalTo: self.txtFirstName.bottomAnchor,constant: 20).isActive = true
        txtLastName.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        txtEmail.translatesAutoresizingMaskIntoConstraints = false
        txtEmail.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        txtEmail.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        txtEmail.topAnchor.constraint(equalTo: self.txtLastName.bottomAnchor,constant: 20).isActive = true
        txtEmail.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        txtPassword.translatesAutoresizingMaskIntoConstraints = false
        txtPassword.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        txtPassword.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        txtPassword.topAnchor.constraint(equalTo: self.txtEmail.bottomAnchor,constant: 20).isActive = true
        txtPassword.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
        
        btnSignUp.translatesAutoresizingMaskIntoConstraints = false
        btnSignUp.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        btnSignUp.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        btnSignUp.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        btnSignUp.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.10).isActive = true
    }
}
