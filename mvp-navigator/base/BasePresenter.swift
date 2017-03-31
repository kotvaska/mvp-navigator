//
// Created by Anastasia Zolotykh on 10.03.17.
// Copyright (c) 2017 chedev. All rights reserved.
//

import Foundation

protocol BasePresenter {

    associatedtype V
    associatedtype N

    var view: V { get set }
    var navigator: N { get set }

    init(view: V, navigator: N)

    func viewDidLoad()

    func viewDidAppear()

    func viewDidDisappear()

}
