//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class MainNavigator: BaseNavigator {

    typealias C = MainViewController

    var controller: MainViewController

    required init(controller: MainViewController) {
        self.controller = controller
    }

    func openOneController() {
        let controller = OneViewController()
        UIApplication.shared.keyWindow?.rootViewController = controller
    }

}
