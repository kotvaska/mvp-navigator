//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class TwoNavigator: BaseNavigator {

    typealias C = TwoViewController

    var controller: TwoViewController

    required init(controller: TwoViewController) {
        self.controller = controller
    }

}
