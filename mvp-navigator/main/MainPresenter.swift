//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class MainPresenter: BasePresenter {

    typealias V = MainView
    typealias N = MainNavigator

    var view: MainView
    var navigator: MainNavigator

    required init(view: MainView, navigator: MainNavigator) {
        self.view = view
        self.navigator = navigator
    }

    func viewDidLoad() {
        navigator.openOneController()
    }

    func viewDidAppear() {
    }

    func viewDidDisappear() {
    }

}
