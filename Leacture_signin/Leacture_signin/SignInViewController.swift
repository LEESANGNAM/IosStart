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
    }
    @IBOutlet weak var buttonSignIn: UIButton!
    
    @IBAction func dismissVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
