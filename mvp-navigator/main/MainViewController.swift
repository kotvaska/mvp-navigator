//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: BasePresenterIBController, MainView {

    typealias V = MainView

    // MARK - if needed

    override func loadView() {
        super.loadView()

        setView(baseView: self)
        setNavigator(navigator: MainNavigator(controller: self))
        setPresenter(presenter: MainPresenter(view: self, navigator: navigator as! MainNavigator))
    }


}
