//
//  ViewController.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveToSignIn(_ sender: Any) {
        let signInVC = UIStoryboard(name: "SignInVC", bundle: nil).instantiateViewController(withIdentifier: "signInVC") // 스토리보드 아이디 지정
        
        self.present(signInVC, animated: true, completion: nil)
    }
    
}

