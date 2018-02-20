//
//  AccountTabController.swift
//  KVOSampleApp
//
//  Created by Alex Paul on 2/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class AccountTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.white]
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        UITabBar.appearance().tintColor = .white        
    }
}
