//
//  Customer.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation
import UIKit

class Customer{
    var customerId : String
    var firstName : String
    var lastName : String
    var fullName : String {
        return "\(firstName) \(lastName)"
    }
    var email : String

    init(customerId : String, firstName : String, lastName : String, email : String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }

}
