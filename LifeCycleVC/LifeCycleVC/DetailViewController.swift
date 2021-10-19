//
//  DetailViewController.swift
//  LifeCycleVC
//
//  Created by 이상남 on 2021/10/18.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    } // 화면 연결한 시점
    //view controller를 코드로 직접 만들면 호출이 안될 수 있다.
    // optional ,once

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    } // 화면이 나올 준비를 한 상태. 아직 화면안나옴
    // once
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    } // 화면 나오기 바로직전 화면이 가려지거나 다시 나타날때에도 계속호출
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    } //
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    } // 화면이 사라지는 시점. 
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    deinit { //메모리가 사라지면 호출
        // 화면을 나갔는데 호출이 안되면 코드점검이 필요하다.
        // 메모리적 문제가 생길수 있따.
        print("최종 deinit")
    }
}
