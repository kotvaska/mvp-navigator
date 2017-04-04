//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class MainNavigator: BaseIBNavigator {


    typealias C = MainViewController

    required init(controller: UIViewController) {
        super.init(controller: controller)
    }

    func openOneController() {
        self.openController(viewController: OneViewController())
    }

}
