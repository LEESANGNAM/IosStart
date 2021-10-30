//
//  ViewController.swift
//  CustomIndicatorButton
//
//  Created by 이상남 on 2021/10/31.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    @IBOutlet weak var myButton: LoadingButton!
    
    var isLoading = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.layer.borderColor = UIColor.black.cgColor
        myButton.layer.borderWidth = 1
        
      
        
    }

    @IBAction func doAction(_ sender: Any) {
        isLoading.toggle() //isLoading = !isLoading
        
        if isLoading{
            myButton.startLoading()
        }else{
            myButton.stopLoading()
        }
    }
    
}

