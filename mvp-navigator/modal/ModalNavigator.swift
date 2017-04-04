//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class ModalNavigator: BaseNavigator {

    typealias C = ModalViewController

    var controller: ModalViewController

    required init(controller: ModalViewController) {
        self.controller = controller
    }

    func returnHome() {
        close()
        goToRootNavigation()
    }


}
