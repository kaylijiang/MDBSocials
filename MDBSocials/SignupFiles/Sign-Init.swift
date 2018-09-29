//
//  Sign-Init.swift
//  MDBSocials
//
//  Created by Kayli  Jiang on 9/28/18.
//  Copyright © 2018 Kayli  Jiang. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

extension SignVC{
    
    //initialize name, username, email, and password text fields
    func init_text(){
        
        name_txt = UITextField(frame: CGRect(x: 10, y: 225, width: view.frame.width - 20, height: 40))
        name_txt.placeholder = "Name:"
        name_txt.borderStyle = UITextBorderStyle.roundedRect
        name_txt.keyboardType = UIKeyboardType.default
        name_txt.backgroundColor = UIColor.white
        name_txt.textColor = UIColor.gray
        view.addSubview(name_txt)
        
        username_txt = UITextField(frame: CGRect(x: 10, y: 275, width: view.frame.width - 20, height: 40))
        username_txt.placeholder = "Username:"
        username_txt.borderStyle = UITextBorderStyle.roundedRect
        username_txt.keyboardType = UIKeyboardType.default
        username_txt.backgroundColor = UIColor.white
        username_txt.textColor = UIColor.gray
        view.addSubview(username_txt)
        
        email_txt = UITextField(frame: CGRect(x: 10, y: 325, width: view.frame.width - 20, height: 40))
        email_txt.placeholder = "Email:"
        email_txt.borderStyle = UITextBorderStyle.roundedRect
        email_txt.keyboardType = UIKeyboardType.default
        email_txt.backgroundColor = UIColor.white
        email_txt.textColor = UIColor.gray
        view.addSubview(email_txt)
        
        password_txt = UITextField(frame: CGRect(x: 10, y: 375, width: view.frame.width - 20, height: 40))
        password_txt.placeholder = "Password:"
        password_txt.borderStyle = UITextBorderStyle.roundedRect
        password_txt.keyboardType = UIKeyboardType.default
        password_txt.backgroundColor = UIColor.white
        password_txt.textColor = UIColor.gray
        view.addSubview(password_txt)
        
    }
    
    //initialize signup and register button
    func init_button(){
        
        register = UIButton(frame: CGRect(x: 20, y: 450, width: view.frame.width - 40, height: 60))
        register.setTitle("Register", for: .normal)
        register.addTarget(self, action: #selector(registerConnect), for: .touchUpInside)
        register.backgroundColor = UIColor.black
        register.layer.cornerRadius = 5
        view.addSubview(register)
    }
}
