//
//  ShowBillDetailsViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {

    @IBOutlet weak var tblBill: UITableView!
//    var billNames : [Bill] = []
    
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
    
    @IBAction func bbAddNewBill(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add new bill", message: "Select type of bill", preferredStyle: .actionSheet);
        alert.addAction(UIAlertAction(title: "Hydro", style: .default, handler: { (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewHydroBillVC = sb.instantiateViewController(identifier: "addNewHydroBillVC") as! AddNewHydroBillViewController
            self.navigationController?.pushViewController(addNewHydroBillVC, animated: true)
            
        }));
        alert.addAction(UIAlertAction(title: "Mobile", style: .default, handler:{ (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewMobileBillVC = sb.instantiateViewController(identifier: "addNewMobileBillVC") as! AddNewMobileViewController
            self.navigationController?.pushViewController(addNewMobileBillVC, animated: true)
            
        }));
        alert.addAction(UIAlertAction(title: "Internet", style: .default, handler:{ (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewInternetBillVC = sb.instantiateViewController(identifier: "addNewInternetBillVC") as! AddNewInternetViewController
            self.navigationController?.pushViewController(addNewInternetBillVC, animated: true)
            
        }));
        self.present(alert, animated: true, completion: nil);
        
    }
    
}

extension ShowBillDetailsViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let billCount = customer?.getBills().count else {
            return 1
        }
        return billCount;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell")

        if let bill = customer?.getBills()[indexPath.row]{
            cell?.textLabel?.text = "Bill Type : \(bill.billType)"
        }
            
        return cell!
    }
}
