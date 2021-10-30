//
//  LoadingButton.swift
//  CustomIndicatorButton
//
//  Created by 이상남 on 2021/10/31.
//

import UIKit

class LoadingButton: UIButton {
    
    // activity indicator view
   private let indicator = UIActivityIndicatorView()
    
    private func makeIndicator(){
        self.addSubview(indicator)
        
        // 메인 쓰레드로 넣는다.
        DispatchQueue.main.async {
            self.indicator.isHidden = true
        }
        
        
        
        indicator.style = .gray
        indicator.startAnimating()
        indicator.translatesAutoresizingMaskIntoConstraints = false //frame : 절대값 으로 쓸때는 true 로 설정
        
        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true // 해당 설정을 하려면 false로 설정
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
  
        override func awakeFromNib() {
            super.awakeFromNib()
    
           makeIndicator()
    
        }

    
    public func startLoading(){
        let titleColor = self.titleLabel?.textColor
        //titleColor?.withAlphaComponent(0) 투명    for: UIControl.State.normal :보통상태
        self.setTitleColor(titleColor?.withAlphaComponent(0), for: UIControl.State.normal)
        indicator.isHidden = false
    }
    
    public func stopLoading(){
        let titleColor = self.titleLabel?.textColor
        //titleColor?.withAlphaComponent(1) 투명도 1 불투명    for: UIControl.State.normal :보통상태
        self.setTitleColor(titleColor?.withAlphaComponent(1), for: UIControl.State.normal)
        indicator.isHidden = true
    }

    

}
