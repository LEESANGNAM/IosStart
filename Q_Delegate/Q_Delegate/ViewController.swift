//
//  ViewController.swift
//  Q_Delegate
//
//  Created by 이상남 on 2021/11/02.
//

import UIKit

// delegate pattern
// 위임한다. (실제로 구현할 내용을 다른곳에 서 전달한다.)
// protocol


class ViewController: UIViewController, LoginInfo {
    @IBOutlet weak var userID: UILabel!
    func load(id: String) {
        // 필요한 내용으로 구현
        userID.text = id
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToLoginVC"{
            let loginVc = segue.destination as! LoginViewController
            loginVc.delegate=self
        }
    }

}

