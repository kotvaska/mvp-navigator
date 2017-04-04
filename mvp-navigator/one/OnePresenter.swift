//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class OnePresenter: BasePresenter {

    typealias V = OneView
    typealias N = OneNavigator

    var view: OneView
    var navigator: OneNavigator

    required init(view: OneView, navigator: OneNavigator) {
        self.view = view
        self.navigator = navigator
    }

    func viewDidLoad() {
    }

    func viewDidAppear() {
    }

    func viewDidDisappear() {
    }

    func onThreeClick() {
        navigator.openTwoViewControllerAsMain()
    }

    func onModalClick() {
        navigator.openModalViewControllerAsModal()
    }

    func onTwoClick() {
        navigator.openTwoViewControllerAsChild()
    }

}
