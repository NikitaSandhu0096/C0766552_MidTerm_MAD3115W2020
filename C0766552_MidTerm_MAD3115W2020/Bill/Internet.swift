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
    var internetGBUsed : String

    init(billId: String, billDate: String, totalBillAmount : String, providerName : String, internetGBUsed : String) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        super.init(billId: billId, billDate: billDate, billType: "Internet", totalBillAmount: totalBillAmount)
    }
}
