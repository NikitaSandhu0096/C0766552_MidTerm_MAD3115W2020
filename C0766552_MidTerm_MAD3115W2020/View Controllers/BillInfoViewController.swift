//
//  BillInfoViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-12.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class BillInfoViewController: UIViewController {
    
    var bill : Bill?
    var internet : Internet?
    var hydro : Hydro?
    var mobile : Mobile?

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl10: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        
    }
    
    func display(){
        if bill?.billType == "Internet"{
            lbl10.text = "Internet Bill Information"
            lbl1.text = internet?.billId
            lbl2.text = internet?.billDate
            lbl3.text = internet?.billType
            lbl4.text = internet?.totalBillAmount
            lbl5.text = internet?.providerName
            lbl6.text = internet?.internetGBUsed
        }
        else if bill?.billType == "Mobile"{
            lbl10.text = "Mobile Bill Information"
            lbl1.text = mobile?.billId
            lbl2.text = mobile?.billDate
            lbl3.text = mobile?.billType
            lbl4.text = mobile?.totalBillAmount
            lbl5.text = mobile?.mobileManufacturerName
            lbl6.text = mobile?.planName
            lbl7.text = mobile?.mobileNumber
            lbl8.text = mobile?.internetGBUsed
            lbl9.text = mobile?.minuteUsed
        }
        else{
            lbl10.text = "Hydro Bill Information"
            lbl1.text = hydro?.billId
            lbl2.text = hydro?.billDate
            lbl3.text = hydro?.billType
            lbl4.text = hydro?.totalBillAmount
            lbl5.text = hydro?.agencyName
            lbl6.text = hydro?.unitConsumed
        }
    }

}
