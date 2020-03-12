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
//    var internet : Internet?
//    var hydro : Hydro?
//    var mobile : Mobile?

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
            let internet = bill as! Internet;
            lbl1.text = "Bill ID : \(internet.billId)"
            lbl2.text = "Bill Date : \(internet.billDate)"
            lbl3.text = "Bill Type : \(internet.billType)"
            lbl4.text = "Bill Amount : \(internet.totalBillAmount)";
            lbl5.text = "Provider Name : \(internet.providerName)"
            lbl6.text = "Internet GB used : \(internet.internetGBUsed)"
        }
        else if bill?.billType == "Mobile"{
            lbl10.text = "Mobile Bill Information"
            let mobile =  bill as! Mobile;
            lbl1.text = "Bill ID : \(mobile.billId)"
            lbl2.text = "Bill Date : \(mobile.billDate)"
            lbl3.text = "Bill Type : \(mobile.billType)"
            lbl4.text = "Bill Amount : \(mobile.totalBillAmount)"
            lbl5.text = "Manufacturer Name : \(mobile.mobileManufacturerName)"
            lbl6.text = "Plan Name : \(mobile.planName)"
            lbl7.text = "Mobile Number : \(mobile.mobileNumber)"
            lbl8.text = "Internet GB used : \(mobile.internetGBUsed)"
            lbl9.text = "Minutes Used : \(mobile.minuteUsed)"
        }
        else{
            lbl10.text = "Hydro Bill Information"
            let hydro = bill as! Hydro;
            lbl1.text = "Bill ID : \(hydro.billId)"
            lbl2.text = "Bill Date : \(hydro.billDate)"
            lbl3.text = "Bill Type : \(hydro.billType)"
            lbl4.text = "Bill Amount : \(hydro.totalBillAmount)"
            lbl5.text = "Agency Name : \(hydro.agencyName)"
            lbl6.text = "Units Consumed : \(hydro.unitConsumed)"
        }
    }

}
