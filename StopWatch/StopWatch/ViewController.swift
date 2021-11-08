//
//  ViewController.swift
//  StopWatch
//
//  Created by 이상남 on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMinute: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelMillisecond: UILabel!
    
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var isStarting = false
    var timer = Timer()
    
    var startTime = 0.0
    var elapsed = 0.0
    
    @IBAction func startStop(_ sender: Any) {
        if isStarting{
            // stop
            elapsed = Date().timeIntervalSince1970 - startTime
            startStopButton.setTitle("Start", for: .normal)
            timer.invalidate() //timer stop
        }else{ // start
            startTime = Date().timeIntervalSince1970 - elapsed
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
            startStopButton.setTitle("Stop", for: .normal)
        }
        isStarting = !isStarting //반전
    }
    @IBAction func reset(_ sender: Any) {
        labelMinute.text = "00"
        labelSecond.text = "00"
        labelSecond.text = "00"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 초기설정
        
        startStopButton.setTitle("Start", for: .normal)
        resetButton.setTitle("Reset", for: .normal)
        labelMinute.text = "00"
        labelSecond.text = "00"
        labelSecond.text = "00"
    }
    
    @objc func updateCounter(){
        
        
    }

}
