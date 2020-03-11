//
//  Bill.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

//enum type {
//    case Internet
//    case Mobile
//    case Hydro
//}

class Bill {
    
    var billId : String
    var billDate : String
//    var billType : type
    var totalBillAmount : Float = 0.0
    
    init(billId : String, billDate : String) {
        self.billId = billId
        self.billDate = billDate
//        self.billType = billType
    }
}
