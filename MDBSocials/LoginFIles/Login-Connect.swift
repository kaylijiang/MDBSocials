//
//  Login-Connect.swift
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
    
    @objc func loginConnect(_sender: Any){
        Auth.auth().signIn(withEmail: email_txt.text!, password: password_txt.text!) { (user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Login Successful")
                self.performSegue(withIdentifier: "toFeed", sender: self)
            }
        }
    
    }
    
    @objc func signUpConnect(_sender: Any){
        self.performSegue(withIdentifier: "toSignUp", sender: self)
    }
}
