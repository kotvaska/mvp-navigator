//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class OneViewController: BasePresenterController<OnePresenter, OneNavigator>, OneView {

    typealias V = OneView

    convenience init() {
        self.init(nibName: "OneViewController", bundle: nil)

        setView(baseView: self)
        setNavigator(navigator: OneNavigator(controller: self))
        setPresenter(presenter: OnePresenter(view: self, navigator: navigator))
    }

    // MARK - if needed

    override func loadView() {
        super.loadView()
    }


}
