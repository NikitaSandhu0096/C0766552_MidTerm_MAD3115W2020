//
//  DataStorage.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-07.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

class DataStorage{
    private static let instance = DataStorage()
    private lazy var customerDictionary = [String : Customer]()
    
    private init(){}
    
    static func getInstance() -> DataStorage{
        return instance
    }
    
    func addCustomer(customer : Customer){
        let cid = customer.customerId
        self.customerDictionary.updateValue(customer, forKey: cid)
    }
    
    func loadCustomerDetails(){
//        customerDictionary.updateValue(Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"), forKey: "C0001")
//        customerDictionary.updateValue(Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur@gmail.com"), forKey: "C0002")
//        customerDictionary.updateValue(Customer(customerId: "C0003", firstName: "Kashyap", lastName: "Jhaveri", email: "kjhaveri@yahoo.com"), forKey: "C0003")
//
        let c1 = Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com")
        let c2 = Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur@gmail.com")
        let c3 = Customer(customerId: "C0003", firstName: "Kashyap", lastName: "Jhaveri", email: "kjhaveri@yahoo.com")
        
        let i1 = Internet(billId: "INTB0001", billDate: "19/10/2019", providerName: "Rogers", internetGBUsed: 500)

        let i2 = Internet(billId: "INTB0002", billDate: "20/11/2019", providerName: "Bell", internetGBUsed: 400)

        let i3 = Internet(billId: "INTB0003", billDate: "21/12/2018", providerName: "Fido", internetGBUsed: 350)

        let h1 = Hydro(billId: "HYDB0001", billDate: "16/11/2018", agencyName: "Planet Energy", unitConsumed: 600)

        let h2 = Hydro(billId: "HYDB0002", billDate: "15/09/2018", agencyName: "Bruce Power", unitConsumed: 500)

        let m1 = Mobile(billId: "MOBB0001", billDate: "06/06/2019", mobileManufacturerName: "Apple Inc.", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: "9753124680", internetGBUsed: 4, minuteUsed: 230)
        
        c1.addBill(bill: i1, billId: i1.billId)
        c1.addBill(bill: h1, billId: h1.billId)

        if m1.mobileNumber.mobileValid(){
            c1.addBill(bill: m1, billId: m1.billId)
        }else{
            print("Enter a valid mobile number in the Mobile Bill details")
        }

        c2.addBill(bill: i2, billId: i2.billId)
        c2.addBill(bill: h2, billId: h2.billId)

        c3.addBill(bill: i3, billId: i3.billId)

        addCustomer(customer: c1)
        addCustomer(customer: c2)
        addCustomer(customer: c3)
         
    }
        
    func getAllCustomers() -> [Customer]{
        var customerList : [Customer] = []
        for i in customerDictionary{
            customerList.append(i.value)
        }
        return customerList
//        return Array(customerDictionary.values)
    }
    
}
