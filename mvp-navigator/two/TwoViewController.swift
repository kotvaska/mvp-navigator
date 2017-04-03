//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

class TwoViewController: BasePresenterController<TwoPresenter, TwoNavigator>, TwoView {

    typealias V = TwoView

    @IBOutlet weak var tableView: UITableView!
    
    convenience init() {
        self.init(nibName: "TwoViewController", bundle: nil)

        setView(baseView: self)
        setNavigator(navigator: TwoNavigator(controller: self))
        setPresenter(presenter: TwoPresenter(view: self, navigator: navigator))
    }

    // MARK - if needed

    override func loadView() {
        super.loadView()
    }

}
