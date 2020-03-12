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
    private lazy var bills = [String : Bill]()
    var totalAmountToPay : Float = 0.0

    init(customerId : String, firstName : String, lastName : String, email : String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    func addBill(bill : Bill, billId : String) {
        bills.updateValue(bill, forKey: billId)
        totalAmountToPay = totalAmountToPay + bill.totalBillAmount
    }

    func getBills() -> [Bill] {
        return Array(self.bills.values)
    }
    
//    func calculateTotalAmount() -> Float{
//        for i in bills{
//            totalAmountToPay = totalAmountToPay + i.value.totalBillAmount
//        }
//        return totalAmountToPay
//    }
}
