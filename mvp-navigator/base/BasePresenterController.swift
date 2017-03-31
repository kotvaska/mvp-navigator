//
// Created by Anastasia Zolotykh on 09.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit


class BasePresenterController<P:BasePresenter, N:BaseNavigator>: BaseController {

    public var baseView: V!
    public var presenter: P!
    public var navigator: N!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    convenience init(presenter: P, view: V, navigator: N, nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        self.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        self.baseView = view
        self.navigator = navigator
        self.presenter = presenter

    }

    convenience init() {
        self.init(nibName: nil, bundle: nil)

    }

    func setView(baseView: V) {
        self.baseView = baseView
    }

    func setPresenter(presenter: P) {
        self.presenter = presenter
    }

    func setNavigator(navigator: N) {
        self.navigator = navigator
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

