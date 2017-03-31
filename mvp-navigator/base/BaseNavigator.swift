//
// Created by Anastasia Zolotykh on 31.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation
import UIKit

protocol BaseNavigator {

    associatedtype C: UIViewController

    var controller: C { get set }

    init(controller: C)

}

extension BaseNavigator {

    func openNavigationController() {

    }

}
