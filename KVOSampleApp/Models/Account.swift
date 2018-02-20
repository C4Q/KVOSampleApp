//
//  Account.swift
//  KVOSampleApp
//
//  Created by Alex Paul on 2/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

class Account {
    public var balance: Double 
    
    var description: String {
        return "current account balance: \(balance)"
    }
    
    init() {
        self.balance = 50
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

