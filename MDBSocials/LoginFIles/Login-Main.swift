//
//  Login-Main.swift
//  MDBSocials
//
//  Created by Kayli  Jiang on 9/28/18.
//  Copyright © 2018 Kayli  Jiang. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    var email_txt: UITextField!
    var password_txt: UITextField!
    var login: UIButton!
    var logoImage: UIImageView!
    var signUpButton: UIButton!
    var mdb: UILabel!
    var logoImage2: UIImageView!
    var meet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        init_text()
        init_button()
        init_image()
        let blue = UIColor.init(red: 153/255.0, green: 187/255.0, blue: 255/255.0, alpha: 1.0)
        self.view.backgroundColor = blue
    }

}
