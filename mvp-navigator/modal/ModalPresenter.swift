//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class ModalPresenter: BasePresenter {

    typealias V = ModalView
    typealias N = ModalNavigator

    var view: V
    var navigator: N

    required init(view: V, navigator: N) {
        self.view = view
        self.navigator = navigator
    }

    func viewDidLoad() {
    }

    func viewDidAppear() {
    }

    func viewDidDisappear() {
    }

}
