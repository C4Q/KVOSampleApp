//
//  Account.swift
//  KVOSampleApp
//
//  Created by Alex Paul on 2/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

// needs to inherit from NSObject to be KVO compliant
class Account: NSObject {
    
    // making balance observable
    @objc dynamic var balance: Double
    
    override var description: String {
        return "current account balance: \(balance)"
    }
    
    override init() {
        self.balance = 50 // default funds
    }
}

extension Account {
    public func setBalance(balance: Double) {
        self.balance = balance
    }
    public func getBalance() -> Double {
        return balance
    }
}

