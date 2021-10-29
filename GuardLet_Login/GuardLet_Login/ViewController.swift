//
//  ViewController.swift
//  GuardLet_Login
//
//  Created by 이상남 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alertLabel.text = ""
        alertLabel.textColor = UIColor.red
    }

    // 이름짓는거를 한번더 생각해서 신중히 정한다.
    @IBAction func doneLogin(_ sender: Any) {
        // grard let 으로 가져오면 계속 사용할 수 있다.  추가적인 조건도 넣을 수 있다.
        guard let username = usernameField.text, username.count > 0 else{
            alertLabel.text = "Username is Empty"
            return
        }
        
        guard let password = passwordField.text, password.count > 0 else{
            
            alertLabel.text="password is Empty"
            return
        }
        
        if username == "kim" && password == "1234"{
            alertLabel.text = "Login Succes"
        }else if username == "kim" && password != "1234"{
            alertLabel.text = "password error"
        }else if username != "kim"{
            alertLabel.text = "not user"
        }
//        else{
//            alertLabel.text = "Login Faild"
//        }
        
    }
}

