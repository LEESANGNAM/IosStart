//
//  SignInViewController.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/18.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    let loginURLString = "http://localhost:3000/loginUsers"
    
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
    
    @IBAction func signInAPICall(_ sender: Any) {
        //parameters
        //get post
        //URLSession
     
        
        let param = [ // 딕셔너리 형태를 바로 보낼 수 없다
            "userName" : userNameTextField.text ?? "",
            "password" : passwordTextField.text ?? ""
            ]
        
        //query String key = value&key=value  바꿔야한다.
        param.queryString
        
        //http://localhost:3000/loginUsers
        
        //network
        
//        let loginURL = URL(string: "http://localhost:3000/loginUsers" + "?" + param.queryString)
        
        //URL Componets
        
        var urlComponents = URLComponents(string:  loginURLString)
        urlComponents?.query = param.queryString
        
        guard let hasURL = urlComponents?.url else{
            return
        }
        
        //model
        URLSession.shared.dataTask(with: hasURL) { data, response, error in
            guard let data = data else{
                return
            }
            
            let decoder = JSONDecoder()
            do{
                let user = try decoder.decode(LoginUser.self, from: data)
                // 왜에러나지
            }catch{
                // error
                print("error ==> \(error)")
            }
            
        }.resume()
        
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


