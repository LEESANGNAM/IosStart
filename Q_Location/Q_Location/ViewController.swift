//
//  ViewController.swift
//  Q_Location
//
//  Created by 이상남 on 2021/10/30.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        // 일반적인 방법 best 정확도의 수준을 물어보는것.
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()  앱이 내려가도 계속 사용해야 하는 경우
        locationManager.requestWhenInUseAuthorization() // 사용자 허용 alert 무조건 사용해야 한다. 앱스토어에서 리젝이 나온다.
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation() //location 정보를 계속 갱신한다.
        }
        
    }
    
    //위도 경도 받아오는것   locations : array 로 location 값을 받아온다
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let userLocation = locations.first{
            print("lat \(userLocation.coordinate.latitude)") //위도
            print("lon \(userLocation.coordinate.longitude)") //경도
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(" location error \(error)")
    }
    


}

