//
//  LoginViewController.swift
//  Q_Delegate
//
//  Created by 이상남 on 2021/11/02.
//

import UIKit

protocol LoginInfo{
    func load(id: String)
}


class LoginViewController: UIViewController {
    
    var delegate : LoginInfo?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textChanged(_ sender: UITextField){
        delegate?.load(id: sender.text ?? "")
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
