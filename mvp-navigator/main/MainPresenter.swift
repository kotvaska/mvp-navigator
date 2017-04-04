//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class MainPresenter: BaseIBPresenter {


    typealias V = MainView
    typealias N = MainNavigator

    required init(view: BaseView, navigator: BaseIBNavigator) {
        super.init(view: view, navigator: navigator)
    }

    override func viewDidLoad() {
    }

    override func viewDidAppear() {
        (navigator as! MainNavigator).openOneController()
    }

    override func viewDidDisappear() {
    }

}
