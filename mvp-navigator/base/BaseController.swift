//
// Created by Anastasia Zolotykh on 10.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class BaseController: UIViewController {

    typealias V = BaseView

    func getAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func getConfiguration() -> AppConfiguration {
        let appDelegate = getAppDelegate()
        return appDelegate.appConfiguration
    }

    func getInteractorManager() -> InteractorManager {
        return getAppDelegate().interactorManager
    }

    func alert(title: String, text: String, okAlertHandler: AlertHandler? = nil, cancelAlertHandler: AlertHandler? = nil) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)


        if let ok = okAlertHandler {
            let okAction = UIAlertAction(title: ok.text, style: .default, handler: ok.handler)
            alert.addAction(okAction)
        }

        if let cancel = cancelAlertHandler {
            let cancelAction = UIAlertAction(title: cancel.text, style: .cancel, handler: cancel.handler)
            alert.addAction(cancelAction)
        }

        present(alert, animated: true)
    }

    func alertError(message: String) {
        alert(title: "Ошибка", text: message, okAlertHandler: AlertHandler(text: "Ок", handler: nil))
    }

}
