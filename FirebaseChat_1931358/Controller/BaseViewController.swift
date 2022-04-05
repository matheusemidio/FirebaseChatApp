//
//  BaseViewController.swift
//  FirebaseChat_1931358
//
//  Created by Matheus Cadena on 2022-04-05.
//

import UIKit

class BaseViewController: UIViewController {

    private var viewLoadingDialog : UILoadingView = UILoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(viewLoadingDialog)

        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews()
    {
        super.viewWillLayoutSubviews()
        
        viewLoadingDialog.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        viewLoadingDialog.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        viewLoadingDialog.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        viewLoadingDialog.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    //Underscore makes the label not mandatory
    func loading( _ message : String = "")
    {
        if(message == "")
        {
            viewLoadingDialog.hide()
        }
        else
        {
            viewLoadingDialog.show(message: message)
        }
    }
    
}
