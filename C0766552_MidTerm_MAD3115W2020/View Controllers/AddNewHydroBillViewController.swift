//
//  AddNewBillViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class AddNewHydroBillViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtBillID: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtAgencyName: UITextField!
    @IBOutlet weak var txtUnitConsumed: UITextField!
    
    @IBOutlet weak var textField_Date: UITextField!
    var datePicker : UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField_Date.delegate = self
    }
   
    @IBAction func bAddBill(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
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
     
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewHydroBillViewController.doneClick))
     
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
     
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewHydroBillViewController.cancelClick))
     
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

