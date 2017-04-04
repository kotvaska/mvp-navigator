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
        if !pushNavigation(viewController: viewController) {
            present(viewController: viewController)
        }
    }

    func pushNavigation(viewController: UIViewController) -> Bool {
        if let navigationController = controller.navigationController {
            navigationController.pushViewController(viewController, animated: true)
            return true
        }
        return false
    }

    func present(viewController: UIViewController) {
        controller.present(viewController, animated: true)
    }

    func setRoot(viewController: UIViewController) {
        UIApplication.shared.keyWindow?.rootViewController = viewController
    }

    func presentModal(viewController: UIViewController, style: UIModalPresentationStyle) {
        viewController.modalPresentationStyle = style
        present(viewController: viewController)

    }

    func close() {
        if !popNavigation() {
            dismiss()
        }
    }

    func goToRootNavigation() -> Bool {
        if let navigationController = controller.navigationController {
            navigationController.popToRootViewController(animated: true)
            return true
        }
        return false
    }

    func popNavigation() -> Bool {
        if let navigationController = controller.navigationController {
            navigationController.popToRootViewController(animated: true)
            return true
        }
        return false
    }

    func dismiss() {
        controller.dismiss(animated: true)
    }

}

