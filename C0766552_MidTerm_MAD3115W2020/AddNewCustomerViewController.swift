//
//  AddNewCustomerViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

    @IBOutlet weak var txtCustomerID: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bbSave(_ sender: UIBarButtonItem) {
        if ((txtCustomerID.text == "" && txtFirstName.text == "") && (txtLastName.text == "" && txtEmail.text == "")){
            let alertController = UIAlertController(title: "New customers creation failed", message:
                "Enter new customer details", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }
        else if txtCustomerID.text == ""{
            let alertController = UIAlertController(title: "New customers creation failed", message:
                "Enter Customer ID", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }else if txtFirstName.text == ""{
            let alertController = UIAlertController(title: "New customers creation failed", message:
                "Enter Customer First Name", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }else if txtLastName.text == ""{
            let alertController = UIAlertController(title: "New customers creation failed", message:
                "Enter Customer Last Name", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }else if txtEmail.text == ""{
            let alertController = UIAlertController(title: "New customers creation failed", message:
                "Enter email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }else{
            if txtEmail.text?.emailValid() == true{
                DataStorage.getInstance().addCustomer(customer: Customer(customerId: txtCustomerID.text ?? "", firstName: txtFirstName.text ?? "", lastName: txtLastName.text ?? "", email: txtEmail.text ?? ""))

                navigationController?.popViewController(animated: true);
            }else{
                let alertController = UIAlertController(title: "New customers creation failed", message:
                    "Enter valid email", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
