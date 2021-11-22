//
//  SignInViewController.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/18.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 모서리 라운딩 처리
        buttonSignIn.layer.cornerRadius = buttonSignIn.bounds.size.height / 2
        
        buttonSignIn.layer.borderWidth = 1
        // cgcolor 타입으로 변경해서 색 설정
        buttonSignIn.layer.borderColor = UIColor.blue.cgColor

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    @IBOutlet weak var buttonSignIn: UIButton!
    
    @IBAction func dismissVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func moveToSignUp(_ sender: Any) {
        let signUpVC = UIStoryboard(name: "SignUpVC", bundle: nil).instantiateViewController(withIdentifier: "signUpVC")
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
}
