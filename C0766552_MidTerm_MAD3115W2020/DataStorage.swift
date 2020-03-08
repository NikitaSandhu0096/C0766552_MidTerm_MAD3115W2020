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
        customerDictionary.updateValue(Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"), forKey: "C0001")
        customerDictionary.updateValue(Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur@gmail.com"), forKey: "C0002")
        customerDictionary.updateValue(Customer(customerId: "C0003", firstName: "Kashyup", lastName: "Jhaveri", email: "kjhaveri@yahoo.com"), forKey: "C0003")
    }
    
    func getAllCustomers() -> [Customer]{
        return Array(customerDictionary.values)
    }
    
}
