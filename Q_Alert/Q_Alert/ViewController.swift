//
//  ViewController.swift
//  Q_Alert
//
//  Created by 이상남 on 2021/11/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: "선택하세요", preferredStyle: .actionSheet)
        
        let delete = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        let save = UIAlertAction(title: "저장", style: .default) { action in
            // 저장 버튼을 눌렀을 때 실행할 코드
        }
        let cancel = UIAlertAction(title: "취소", style: .default, handler: nil)
        alert.addAction(delete)
        alert.addAction(save)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

