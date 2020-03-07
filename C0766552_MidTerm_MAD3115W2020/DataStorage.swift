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
    
    var c1 = (Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"))
    var c2 = (Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur@gmail.com"))
    var c3 = (Customer(customerId: "C0003", firstName: "Nikita", lastName: "Sandhu", email: "kjhaveri@gmail.com"))
    
    func addCustomer(customer : Customer){
        let cid = customer.customerId
        customerDictionary.updateValue(customer, forKey: cid)
    }
    
    func loadCustomerDetails(){
        addCustomer(customer: c1)
        addCustomer(customer: c2)
        addCustomer(customer: c3)
    }
    
    func getAllCustomers() -> [Customer]{
        var customers : [Customer] = []
        for i in customerDictionary{
            customers.append(i.value)
        }
        return customers
    }
}
