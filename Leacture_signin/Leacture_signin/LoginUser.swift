//
//  LoginUser.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/26.
//

import UIKit

// 참조에 대한 개념이없다면 스트럭트가 좋다.
struct LoginUser: Codable {
    let name: String?
    let password: String?
    let email: String?
    let id: Int?
}
