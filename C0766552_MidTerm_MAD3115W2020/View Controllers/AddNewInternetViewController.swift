//
//  AddNewInternetViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class AddNewInternetViewController: UIViewController, UITextFieldDelegate {
    
    var customer:Customer?
    
    @IBOutlet weak var txtBillID: UITextField!
//    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtProviderName: UITextField!
    @IBOutlet weak var txtInternetUsage: UITextField!
    
    @IBOutlet weak var textField_Date: UITextField!
    var datePicker : UIDatePicker!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let bbAddBill = UIBarButtonItem(title: "Add Bill", style: .plain, target: self, action: #selector(addBills))
        navigationItem.rightBarButtonItem = bbAddBill
        textField_Date.delegate = self
    }
    
    @objc func addBills(){
            if (((txtBillID.text == "" && textField_Date.text == "") && (txtBillAmount.text == "" && txtProviderName.text == "")) && txtInternetUsage.text == ""){
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter all the required details to create new Internet Bill", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            } else if txtBillID.text == ""{
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter Bill ID", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }else if textField_Date.text == ""{
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter Bill Date", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }else if txtBillAmount.text == ""{
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter Bill Amount", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }else if txtProviderName.text == ""{
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter Provider Name", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }else if txtInternetUsage.text == ""{
                let alertController = UIAlertController(title: "No new Internet Bill created", message:
                    "Enter Internet Usage", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }else{
                
                let tempObj3 = Internet(billId: txtBillID.text ?? "", billDate: textField_Date.text ?? "", totalBillAmount: Float(txtBillAmount.text ?? "")!, providerName: txtProviderName.text ?? "", internetGBUsed: Int(txtInternetUsage.text ?? "")!)
                
                customer?.addBill(bill: tempObj3, billId: tempObj3.billId)
                
                navigationController?.popViewController(animated: true)
            }
       }
    
//    @IBAction func bAddBill(_ sender: UIButton) {
//        if (((txtBillID.text == "" && txtBillDate.text == "") && (txtBillAmount.text == "" && txtProviderName.text == "")) && txtInternetUsage.text == ""){
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter all the required details to create new Internet Bill", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        } else if txtBillID.text == ""{
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter Bill ID", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        }else if txtBillDate.text == ""{
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter Bill Date", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        }else if txtBillAmount.text == ""{
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter Bill Amount", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        }else if txtProviderName.text == ""{
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter Provider Name", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        }else if txtInternetUsage.text == ""{
//            let alertController = UIAlertController(title: "No new Internet Bill created", message:
//                "Enter Internet Usage", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .default))
//            self.present(alertController, animated: true, completion: nil)
//        }else{
//            navigationController?.popViewController(animated: true)
//        }
//    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
        
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        self.pickUpDate(self.textField_Date)
    }
           
    func pickUpDate(_ textField : UITextField)
    {
        self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.datePicker
             
        //ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .blue//UIColor(red: 92/255, green: 216/255, blue 255/255, alpha : 1)
        toolBar.sizeToFit()
             
        //Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewInternetViewController.doneClick))
            
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
             
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewInternetViewController.cancelClick))
             
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
            
    @objc func doneClick(){
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        textField_Date.text = dateFormatter1.string(from: datePicker.date)
        textField_Date.resignFirstResponder()
    }
            
    @objc func cancelClick(){
        textField_Date.resignFirstResponder()
    }
}
