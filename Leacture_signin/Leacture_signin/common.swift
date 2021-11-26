//
//  common.swift
//  Leacture_signin
//
//  Created by 이상남 on 2021/11/26.
//

import UIKit

extension Dictionary {
    var queryString: String{
        var output = ""
        for (key,value) in self{
            output = output + "\(key) = \(value)&"
        }
        output = String(output.dropLast())
        return output
    }
}
