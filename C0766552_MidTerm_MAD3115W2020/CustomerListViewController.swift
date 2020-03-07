//
//  CustomerListViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-06.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController {

    @IBOutlet weak var tblCustomers: UITableView!
    var customerNames : [Customer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customerNames = DataStorage.getInstance().getAllCustomers()

    }
    
    @IBAction func bbLogout(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

}
extension CustomerListViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
    
        let customer = customerNames[indexPath.row]

        cell?.textLabel?.text = customer.firstName

        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let showBillDetailsVC = sb.instantiateViewController(identifier: "showBillDetailsVC") as! ShowBillDetailsViewController
        
        self.navigationController?.pushViewController(showBillDetailsVC, animated: true)
    }
}
