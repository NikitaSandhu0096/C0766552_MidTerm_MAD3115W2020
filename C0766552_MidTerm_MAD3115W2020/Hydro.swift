//
//  Hydro.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

class Hydro : Bill{
    
    var agencyName : String
    var unitConsumed : Int
    var hyrdoRate : Float
    
    init(billId: String, billDate: String, billType: type, agencyName : String, unitConsumed : Int, hydroRate : Float) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.hyrdoRate = hydroRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    func calculateBill() -> Float {
        totalBillAmount = Float(self.unitConsumed) * self.hyrdoRate
        return totalBillAmount
    }
}
