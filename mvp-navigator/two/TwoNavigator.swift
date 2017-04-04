//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class TwoNavigator: BaseNavigator {

    typealias C = TwoViewController

    var controller: TwoViewController

    required init(controller: TwoViewController) {
        self.controller = controller
    }

    func openRoot() {
        if !goToRootNavigation() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "NavigationController")
            setRoot(viewController: controller)
        }
    }

}
