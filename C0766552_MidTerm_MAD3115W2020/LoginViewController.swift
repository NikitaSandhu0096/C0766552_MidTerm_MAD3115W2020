//
//  SecondViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-05.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swhRemember: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if swhRemember.isOn != true{
            txtEmail.text = ""
            txtPassword.text = ""
        }
    }
    
    
    @IBAction func bbLogin(_ sender: UIBarButtonItem) {
        if (txtEmail.text == "nsandhu@gmail.com" && txtPassword.text == "nsandhu"){
        if (txtEmail.text?.emailValid() == true && txtPassword.text != ""){

                let sb = UIStoryboard(name: "Main", bundle: nil)
                let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
                self.navigationController?.pushViewController(customerListVC, animated: true)
            }
        }else{
            let alertController = UIAlertController(title: "Login Failed", message:
                "Enter valid email and password", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }
            
    }
}
