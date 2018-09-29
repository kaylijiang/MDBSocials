//
//  Sign-Main.swift
//  MDBSocials
//
//  Created by Kayli  Jiang on 9/28/18.
//  Copyright © 2018 Kayli  Jiang. All rights reserved.
//

import UIKit

class SignVC: UIViewController {
    
    var email_txt: UITextField!
    var password_txt: UITextField!
    var register: UIButton!
    var logoImage: UIImageView!
    var name_txt: UITextField!
    var username_txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        init_text()
        init_button()
        
        let blue = UIColor.init(red: 153/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1.0)
        self.view.backgroundColor = blue
        
    }
    
}
