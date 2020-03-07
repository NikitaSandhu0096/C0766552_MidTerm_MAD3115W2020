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
        
//        if swhRemember.isOn{
//            txtEmail.text = self.value(forKey: "txtEmail") as? String
//            txtPassword.text = self.value(forKey: "txtPassword") as? String
//        }else{
//            txtEmail.text = ""
//            txtPassword.text = ""
//        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if swhRemember.isOn != true{
            txtEmail.text = ""
            txtPassword.text = ""
        }
    }
    
    
    @IBAction func bbLogin(_ sender: UIBarButtonItem) {
        if (txtEmail.text?.emailValid() == true && txtPassword.text != ""){
//            if swhRemember.isOn{
//                UserDefaults.standard.set(txtEmail.text, forKey: "email")
//                UserDefaults.standard.set(txtPassword.text, forKey: "password")
//
//                let sb = UIStoryboard(name: "Main", bundle: nil)
//                let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
//                self.navigationController?.pushViewController(customerListVC, animated: true)
//
////           performSegue(withIdentifier: "showNC2", sender: self)
//            }else{
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
                self.navigationController?.pushViewController(customerListVC, animated: true)
//                performSegue(withIdentifier: "showNC2", sender: self)
//            }
//
        }else{
            let alertController = UIAlertController(title: "Login Failed", message:
                "Enter valid email and password", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
//            print("Enter valid email and password")
        }
            
    }
}
