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
        navigator.present(viewController: TwoViewController())
    }

    func onModalClick() {
        navigator.presentModal(viewController: ModalViewController(), style: .popover)
    }

    func onTwoClick() {
        navigator.openController(viewController: TwoViewController())
    }

}
