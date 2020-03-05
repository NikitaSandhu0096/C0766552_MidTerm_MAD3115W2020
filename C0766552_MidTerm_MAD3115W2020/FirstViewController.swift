//
//  ViewController.swift
//  C0766552_MidTerm_MAD3115W2020
//
//  Created by Nikita Sandhu on 2020-03-05.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private var waitTime : Timer?
    @IBOutlet weak var imgIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgIcon.image = UIImage(named: "Bill-512")
        
        waitTime = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(waitingTime), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    
    @objc func waitingTime(){
        performSegue(withIdentifier: "showNC", sender: self)
    }

}

