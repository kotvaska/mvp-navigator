//
// Created by Anastasia Zolotykh on 04.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class BaseIBNavigator: BaseNavigator {

    typealias C = UIViewController

    var controller: C

    required init(controller: C) {
        self.controller = controller
    }

}
