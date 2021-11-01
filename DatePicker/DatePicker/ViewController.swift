//
//  ViewController.swift
//  DatePicker
//
//  Created by 이상남 on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 날짜의 범위 지정
        let currentDate = Date() // 코드가 실행되는 당일 날짜
//        datePicker.maximumDate // 최대범위
//        datePicker.minimumDate //최소범위
        
        var dateComponet = DateComponents()
        dateComponet.day = 2
        
        // 2일 추가된 데이터
        var maxDate = Calendar.current.date(byAdding: dateComponet, to: currentDate)
        
        datePicker.maximumDate = maxDate // 최대값은 오늘로부터 2일뒤 까지 가능하다.
        datePicker.minimumDate = currentDate // 과거의 날짜는 설정 불가능 하다.
    }

    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print(sender.date.timeIntervalSince1970)
        
    }
    
}

