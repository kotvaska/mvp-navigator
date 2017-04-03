//
// Created by Anastasia Zolotykh on 03.04.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: BaseController, MainView {

    typealias V = MainView

    private var presenter: MainPresenter
    private var navigator: MainNavigator

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func loadView() {
        super.loadView()

        navigator = MainNavigator(controller: self)
        presenter = MainPresenter(view: self, navigator: navigator)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.viewDidAppear()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter.viewDidDisappear()
    }

}
