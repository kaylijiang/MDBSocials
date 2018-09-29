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
        
        mdb = UILabel(frame: CGRect(x: 95, y: 200, width: 100, height: 40))
        mdb.text = "MDB Socials"
        mdb.textAlignment = .center
        view.addSubview(mdb)
        
        meet = UILabel(frame: CGRect(x: view.frame.width / 2 + 35, y: view.frame.height / 3 - 90, width: 100, height: 40))
        meet.text = "Let's Meet!"
        meet.textAlignment = .center
        view.addSubview(meet)
    }
    
    //initialize login and signup button
    func init_button(){
        
        login = UIButton(frame: CGRect(x: 5, y: 550, width: view.frame.width-10, height: 50))
        
        login.setTitle("Login", for: .normal)
        login.addTarget(self, action: #selector(loginConnect), for: .touchUpInside)
        login.backgroundColor = UIColor.init(red: 255/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1.0)
        login.layer.cornerRadius = 5
        view.addSubview(login)
        
        signUpButton = UIButton(frame: CGRect(x: 260, y: 80, width: 100, height: 30))
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.addTarget(self, action: #selector(signUpConnect), for: .touchUpInside)
        signUpButton.backgroundColor = UIColor.black
        signUpButton.layer.cornerRadius = 5
        view.addSubview(signUpButton)
        
    }
    
    //initialize logo image
    func init_image(){
        
        logoImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 375))
        logoImage.center = CGPoint(x: view.frame.width / 2 - 50, y: view.frame.height / 3 + 30)
        logoImage.image = UIImage(named: "phoneIcon")
        view.addSubview(logoImage)
        
        logoImage2 = UIImageView(frame: CGRect(x: 0, y: 0, width: 105, height: 75))
        logoImage2.center = CGPoint(x: view.frame.width / 2 + 85, y: view.frame.height / 3 - 60)
        logoImage2.image = UIImage(named: "chatIcon2")
        view.addSubview(logoImage2)
        
    }
}
