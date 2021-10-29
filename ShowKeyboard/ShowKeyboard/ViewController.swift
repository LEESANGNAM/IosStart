//
//  ViewController.swift
//  ShowKeyboard
//
//  Created by 이상남 on 2021/10/29.
//

import UIKit

class DetailViewController: UIViewController{
    
  
    
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // 키보드 자동 올리기
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myText.becomeFirstResponder()

    }
    
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        myText.resignFirstResponder()
    
    }
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

