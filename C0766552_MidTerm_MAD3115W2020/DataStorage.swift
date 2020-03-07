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
    private lazy var customerList : [Customer] = []
    
    private init(){}
    
    static func getInstance() -> DataStorage{
        return instance
    }
    
    func addCustomer(customer : Customer){
        self.customerList.append(customer)
    }
    
    func getAllCustomers() -> [Customer]{
        return self.customerList
    }
    
    func loadCustomerDetails(){
        customerList.append(Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"))
        customerList.append(Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur234@yahoo.com"))
        customerList.append(Customer(customerId: "C0003", firstName: "Jyoti", lastName: "Thomas", email: "JyotiThomas@gmail.com"))
        customerList.append(Customer(customerId: "C0004", firstName: "Charmi", lastName: "Patel", email: "Charmi56@yahoo.com"))
        customerList.append(Customer(customerId: "C0005", firstName: "Avni", lastName: "Patel", email: "Avnip@"))
    }
}
