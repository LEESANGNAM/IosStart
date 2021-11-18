//
//  SignUpViewController.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/18.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var buttonSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSignUp.layer.cornerRadius = buttonSignUp.bounds.height / 2
        
        buttonSignUp.layer.borderWidth  = 1
        buttonSignUp.layer.borderColor  = UIColor.white.cgColor
        // Do any additional setup after loading the view.
    }
    

}
