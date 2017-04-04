//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: BasePresenterController<ModalPresenter, ModalNavigator>, ModalView {

    typealias V = ModalView

    convenience init() {
        self.init(nibName: "ModalViewController", bundle: nil)

        setView(baseView: self)
        setNavigator(navigator: ModalNavigator(controller: self))
        setPresenter(presenter: ModalPresenter(view: self, navigator: navigator))
    }

    // MARK - if needed

    override func loadView() {
        super.loadView()
    }

    @IBAction func onCloseClick(_ sender: Any) {
        presenter.close()
    }

    @IBAction func onMainClick(_ sender: Any) {
        presenter.returnHome()
    }
    
}
