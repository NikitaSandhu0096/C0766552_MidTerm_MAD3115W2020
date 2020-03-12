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
    var billType : String
    var totalBillAmount : Float
    
    init(billId : String, billDate : String, billType : String, totalBillAmount : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    func evaluateDate(string : String) -> String {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet = DateFormatter()
        dateformatGet.dateFormat = "MMM d, yyyy"

        let dateformatSet = DateFormatter()
        dateformatSet.dateFormat = "EEE, d MMM, yyyy"

        let date : Date? = dateformatGet.date(from: billDate)
        return dateformatSet.string(from: date!)
        
    }
    
}
