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
        loadCustomers()
        // Do any additional setup after loading the view.
    }
    
    func loadCustomers(){
        
        customerNames.append(Customer(customerId: "C00001", name: "Nikita Sandhu", email: "nsandhu@gmail.com"))
        
        /*["Afganistan", "Angola", "Aruba", "Canada", "India", "Bahamas", "Ghana", "France", "Nepal", "Kenya", "Bermudas", "Danemark"]    }*/
        
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

        cell?.textLabel?.text = customer.name

        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let showBillDetailsVC = sb.instantiateViewController(identifier: "showBillDetailsVC") as! ShowBillDetailsViewController
        self.navigationController?.pushViewController(showBillDetailsVC, animated: true)
    }
}
