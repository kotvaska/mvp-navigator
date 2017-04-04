//
// Created by Anastasia Zolotykh on 04.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

class BaseIBPresenter: BasePresenter {

    typealias V = BaseView
    typealias N = BaseIBNavigator

    var view: V
    var navigator: N

    required init(view: V, navigator: N) {
        self.navigator = navigator
        self.view = view
    }

    func viewDidLoad() {
    }

    func viewDidAppear() {
    }

    func viewDidDisappear() {
    }

}