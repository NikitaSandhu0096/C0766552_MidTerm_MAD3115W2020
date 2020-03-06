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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func swtRemember(_ sender: UISwitch) {   //https://www.ioscreator.com/tutorials/switch-ios-tutorial
        if sender.isOn{
            UserDefaults.standard.set(txtEmail.text, forKey: "email")
            UserDefaults.standard.set(txtPassword.text, forKey: "password")
        }else{
            UserDefaults.standard.removeObject(forKey: "email")
            UserDefaults.standard.removeObject(forKey: "password")
        }
    }
    
    @IBAction func bbLogin(_ sender: UIBarButtonItem) {
//        if (txtEmail.text != nil && txtPassword.text != nil){
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let thirdVC = sb.instantiateViewController(identifier: "thirdVC") as! ThirdViewController
            self.navigationController?.pushViewController(thirdVC, animated: true)
//        }else{
//            print("Enter email and password")
//        }
    }
}
