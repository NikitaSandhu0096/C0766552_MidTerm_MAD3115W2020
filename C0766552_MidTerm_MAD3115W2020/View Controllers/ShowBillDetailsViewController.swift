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
    @IBOutlet weak var lblTotalBill: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerID.text = customer?.customerId
        lblCustomerFirstName.text = customer?.firstName
        lblCustomerLastName.text = customer?.lastName
        lblCustomerFullName.text = customer?.fullName
        lblCustomerEmail.text = customer?.email
        lblTotalBill.text = "Total Amount to Pay  :    \(String(describing: customer!.totalAmountToPay.currency()))"
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        lblTotalBill.text = "Total Amount to Pay  :    \(String(describing: customer!.totalAmountToPay.currency()))"
        tblBill.reloadData()
    }
    
    @IBAction func bbAddNewBill(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add new bill", message: "Select type of bill", preferredStyle: .actionSheet);
        alert.addAction(UIAlertAction(title: "Hydro", style: .default, handler: { (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewHydroBillVC = sb.instantiateViewController(identifier: "addNewHydroBillVC") as! AddNewHydroBillViewController
            addNewHydroBillVC.customer = self.customer
            self.navigationController?.pushViewController(addNewHydroBillVC, animated: true)
            
        }));
        alert.addAction(UIAlertAction(title: "Mobile", style: .default, handler:{ (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewMobileBillVC = sb.instantiateViewController(identifier: "addNewMobileBillVC") as! AddNewMobileViewController
            addNewMobileBillVC.customer = self.customer
            self.navigationController?.pushViewController(addNewMobileBillVC, animated: true)
            
        }));
        alert.addAction(UIAlertAction(title: "Internet", style: .default, handler:{ (action) in
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addNewInternetBillVC = sb.instantiateViewController(identifier: "addNewInternetBillVC") as! AddNewInternetViewController
            addNewInternetBillVC.customer = self.customer
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell") as! BillCellTableViewCell

        if let bill = customer?.getBills()[indexPath.row]{
//            cell?.textLabel?.text = "\(bill.billType)       \(bill.evaluateDate(string: bill.billDate))        \(bill.totalBillAmount.currency())"
            cell.lblBillType.text = "Bill Type      :   \(bill.billType)"
            cell.lblBillDate.text = "Bill Date      :   \(bill.evaluateDate(string: bill.billDate))"
            cell.lblBillAmount.text = "Bill Amount :   \(bill.totalBillAmount.currency())"
        }
            
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        let c = DataStorage.getInstance().getAllBills()
//        let sa = c[indexPath.row]
        let sc = customer?.getBills()[indexPath.row]
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let billInfoVC = sb.instantiateViewController(identifier: "billInfoVC") as! BillInfoViewController
        billInfoVC.bill = sc
        self.navigationController?.pushViewController(billInfoVC, animated: true)
    }
}
