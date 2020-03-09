//
//  Internet.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

class Internet : Bill{

    var providerName : String
    var internetGBUsed : Int
    var internetRate : Float

    init(billId: String, billDate: String, billType: type, providerName : String, internetGBUsed : Int, internetRate : Float) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }

    func calculateBill() -> Float {
        totalBillAmount = Float(self.internetGBUsed) * self.internetRate
        return totalBillAmount
    }
}
