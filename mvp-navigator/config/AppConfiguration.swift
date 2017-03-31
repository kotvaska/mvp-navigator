//
// Created by Maksim Kirilovskikh on 18.12.16.
// Copyright (c) 2016 chedev. All rights reserved.
//

import Foundation
import UIKit

class AppConfiguration {

    let userDefault: UserDefaults

    init(_ application: UIApplication) {
        self.userDefault = UserDefaults.standard
    }

}
