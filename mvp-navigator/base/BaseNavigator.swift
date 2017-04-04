//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

protocol BaseNavigator {

    associatedtype C: UIViewController

    var controller: C { get set }

    init(controller: C)

}

extension BaseNavigator {

    func openController(viewController: UIViewController) {
        if !pushNavigationViewController(viewController: viewController) {
            presentController(viewController: viewController)
        }
    }

    func pushNavigationViewController(viewController: UIViewController) -> Bool {
        if let navigationController = controller.navigationController {
            navigationController.pushViewController(viewController, animated: true)
            return true
        }
        return false
    }

    func presentController(viewController: UIViewController) {
        controller.present(viewController, animated: true)
    }

    func setRootViewController(viewController: UIViewController) {
        UIApplication.shared.keyWindow?.rootViewController = viewController
    }

}

