//
//  ShowBillDetailsViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
    
    var customer : Customer?

    @IBOutlet weak var lblCustomerID: UILabel!
    @IBOutlet weak var lblCustomerFirstName: UILabel!
    @IBOutlet weak var lblCustomerLastName: UILabel!
    @IBOutlet weak var lblCustomerFullName: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerID.text = customer?.customerId
        lblCustomerFirstName.text = customer?.firstName
        lblCustomerLastName.text = customer?.lastName
        lblCustomerFullName.text = customer?.fullName
        lblCustomerEmail.text = customer?.email
    }

}

