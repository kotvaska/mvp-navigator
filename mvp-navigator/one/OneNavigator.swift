//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class OneNavigator: BaseNavigator {

    typealias C = OneViewController

    var controller: OneViewController

    required init(controller: OneViewController) {
        self.controller = controller
    }

}
