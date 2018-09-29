//
//  Sign-Connect.swift
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
    
    @objc func registerConnect(_sender: Any){
        
        Auth.auth().createUser(withEmail: email_txt.text!, password: password_txt.text!) { (user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Sign Up Successful")
                self.performSegue(withIdentifier: "toFeedfromSignIn", sender: self)
            }
        }
        
    }
}
