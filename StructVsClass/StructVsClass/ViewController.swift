//
//  ViewController.swift
//  StructVsClass
//
//  Created by 이상남 on 2021/10/18.
//

import UIKit

// 보통 모델이나 데이터 형태를 잡는 형태를 만들때 사용
struct TestStruct {
    var name: String
    var age: Int
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

class TestClass{
    var name: String
    var age: Int
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

// 컨트롤러나 여러가지 기능은 클래스로 만든다.
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var testStruct: [TestStruct] = []
        var testClass: [TestClass] = []
        
        
        var str = TestStruct(name: "aa", age: 0)
        var str2 = str
        str2.name = "bb"
        
        print("str\(str)")
        print("str2\(str2)")
        // 스트럭트는 데이터를 참조하는게아닌 값만 따로 복사한다.
        
        
        let startTime = CFAbsoluteTimeGetCurrent()
        for _ in 0..<10000{
            TestStruct.init(name: "aa", age: 0)
        }
        let durationTime = CFAbsoluteTimeGetCurrent() - startTime
        
        
        let startTime2 = CFAbsoluteTimeGetCurrent()
        for _ in 0..<10000{
            TestClass.init(name: "aa", age: 0)
        }
        let durationTime2 = CFAbsoluteTimeGetCurrent() - startTime2
        
        print("durationTime Struct: \(durationTime)")
        print("durationTime Class: \(durationTime2)")
        
        // 데이터를 가공하는 경우 스트럭트가 유리하다

    }


}

