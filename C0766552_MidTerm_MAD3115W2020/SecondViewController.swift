//
//  SecondViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-05.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swhRemember: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    @IBAction func swtRemember(_ sender: UISwitch) {   //https://www.ioscreator.com/tutorials/switch-ios-tutorial
//        if sender.isOn{
//            UserDefaults.standard.set(txtEmail.text, forKey: "email")
//            UserDefaults.standard.set(txtPassword.text, forKey: "password")
//            
//            let ud = UserDefaults.standard
//            let email = ud.string(forKey: "email")
//            txtEmail.text = email
//            let password = ud.string(forKey: "password")
//            txtPassword.text = password
//            
//        }else{
//            UserDefaults.standard.removeObject(forKey: "email")
//            UserDefaults.standard.removeObject(forKey: "password")
//            txtEmail.text = ""
//            txtPassword.text = ""
//        }
//    }
    
    @IBAction func bbLogin(_ sender: UIBarButtonItem) {
        if (txtEmail.text?.emailValid() == true && txtPassword.text != ""){
            if swhRemember.isOn{
                UserDefaults.standard.set(txtEmail.text, forKey: "email")
                UserDefaults.standard.set(txtPassword.text, forKey: "password")
                performSegue(withIdentifier: "showNC2", sender: self)
            }else{
                performSegue(withIdentifier: "showNC2", sender: self)
            }
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let thirdVC = sb.instantiateViewController(identifier: "thirdVC") as! ThirdViewController
//            self.navigationController?.pushViewController(thirdVC, animated: true)
        }else{
            let alertController = UIAlertController(title: "Login Failed", message:
                "Enter valid email and password", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
//            print("Enter valid email and password")
        }
            
    }
}
