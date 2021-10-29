//
//  ViewController.swift
//  SafariVC
//
//  Created by 이상남 on 2021/10/29.
//

import UIKit
import SafariServices
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.naver.com")!)
        self.show(vc, sender: self)
    }
    
}

