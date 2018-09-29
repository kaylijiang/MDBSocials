//
//  Login-Init.swift
//  MDBSocials
//
//  Created by Kayli  Jiang on 9/28/18.
//  Copyright © 2018 Kayli  Jiang. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

extension LoginViewController{
    
    //initialize email and password text fields
    func init_text(){
        
        email_txt = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 100, width: view.frame.width - 20, height: 40))
        email_txt.placeholder = "Email:"
        email_txt.borderStyle = UITextBorderStyle.roundedRect
        email_txt.keyboardType = UIKeyboardType.default
        email_txt.backgroundColor = UIColor.white
        email_txt.textColor = UIColor.gray
        view.addSubview(email_txt)
        
        password_txt = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 150, width: view.frame.width - 20, height: 40))
        password_txt.placeholder = "Password:"
        password_txt.borderStyle = UITextBorderStyle.roundedRect
        password_txt.keyboardType = UIKeyboardType.default
        password_txt.backgroundColor = UIColor.white
        password_txt.textColor = UIColor.gray
        view.addSubview(password_txt)
        
    }
    
    //initialize login and signup button
    func init_button(){
        
        login = UIButton(frame: CGRect(x: 20, y: view.frame.height - 100, width: 200, height: 60))
        login.setTitle("Login", for: .normal)
        login.addTarget(self, action: #selector(loginConnect), for: .touchUpInside)
        login.backgroundColor = UIColor.black
        view.addSubview(login)
        
        signUpButton = UIButton(frame: CGRect(x: 170, y: 80, width: 50, height: 30))
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.addTarget(self, action: #selector(signUpConnect), for: .touchUpInside)
        signUpButton.backgroundColor = UIColor.black
        view.addSubview(signUpButton)
    }
    
    //initialize logo image
    func init_image(){
        
        logoImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        logoImage.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 3)
        logoImage.image = UIImage(named: "mdb-textonly-gold")
        view.addSubview(logoImage)
        
    }
}
