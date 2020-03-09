//
//  Extensions.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-06.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation
extension String{
    func emailValid() -> Bool{      //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    func mobileValid() -> Bool{         //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
}

extension Int{
    
    func dataUsed() -> String{
        let g = String.init(format: "%i GB", self)
        return g
    }
    
    func time() -> String {
        let t = String.init(format: "%i minutets", self)
        return t
    }
}

extension Float{
    func currency() -> String{
        let c = String.init(format: "$%.2f", self)
        return c
    }
}
