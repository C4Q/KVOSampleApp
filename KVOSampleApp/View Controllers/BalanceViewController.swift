//
//  BalanceViewController.swift
//  KVOSampleApp
//
//  Created by Alex Paul on 2/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class BalanceViewController: UIViewController {
    
    @IBOutlet weak var balanceLabel: UILabel!
    
    @objc private var account: Account!
    
    private var observation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let accountTabController = tabBarController as! AccountTabController
        account = accountTabController.account
        
        observation = observe(\.account.balance, options: [.initial, .old, .new]) { (object, change) in
            print("change in value")
            self.balanceLabel.text = "$\(Int(object.account.balance))"
        }
    }
}
