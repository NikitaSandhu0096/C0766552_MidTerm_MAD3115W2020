//
//  ShowBillDetailsViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {

    @IBOutlet weak var lblCustomerID: UILabel!
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        let ud = UserDefaults.standard
        
        let cid = ud.string(forKey: "cid")
        if let nm1 = cid{
            lblCustomerID.text = "Customer ID : \(nm1)"
        }

        let fname = ud.string(forKey: "fname")
        if let nm2 = fname{
            lblCustomerName.text = "Customer Name : \(nm2)"
        }

        let lname = ud.string(forKey: "name")
        if let nm3 = lname{
            lblCustomerEmail.text = "Customer email : \(nm3)"
        }
        // Do any additional setup after loading the view.
    }

}

