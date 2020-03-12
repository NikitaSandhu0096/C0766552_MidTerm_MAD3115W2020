//
//  Hydro.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

class Hydro : Bill{
    
//    var billType : String = "Hydro"
    var agencyName : String
    var unitConsumed : Int
    
    init(billId: String, billDate: String, totalBillAmount: Float, agencyName : String, unitConsumed : Int) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: "Hydro", totalBillAmount: totalBillAmount)
    }
}
