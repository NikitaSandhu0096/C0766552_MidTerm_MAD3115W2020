//
//  ShowBillDetailsViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    var billPicker : UIPickerView!
    
    var billList = ["Hydro", "Mobile", "Internet"]
    
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
        
        billPicker.dataSource = self
        billPicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.billList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return billList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewHydroBillVC = sb.instantiateViewController(identifier: "addNewHydroBillVC") as! AddNewHydroBillViewController
            self.navigationController?.pushViewController(addNewHydroBillVC, animated: true)
        } else if row == 1{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewMobileBillVC = sb.instantiateViewController(identifier: "addNewMobileBillVC") as! AddNewMobileViewController
            self.navigationController?.pushViewController(addNewMobileBillVC, animated: true)
        } else{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewInternetBillVC = sb.instantiateViewController(identifier: "addNewInternetBillVC") as! AddNewInternetViewController
            self.navigationController?.pushViewController(addNewInternetBillVC, animated: true)
        }
    }

}

