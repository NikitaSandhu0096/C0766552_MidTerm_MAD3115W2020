//
//  Mobile.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

class Mobile : Bill{
    
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : String
    var internetGBUsed : Int
    var minuteUsed : Int
    var planRate : Float
    var internetRate : Float

    init(billId: String, billDate: String, billType: type, mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Int, minuteUsed : Int, planRate : Float, internetRate : Float) {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        self.planRate = planRate
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    func calculateBill() -> Float {
        let intr = Float(self.internetGBUsed) * self.internetRate
        let mob = Float(self.minuteUsed) * self.planRate
        totalBillAmount = intr + mob
        return totalBillAmount
    }
}
