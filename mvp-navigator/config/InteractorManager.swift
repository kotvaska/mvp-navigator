//
// Created by Maksim Kirilovskikh on 18.12.16.
// Copyright (c) 2016 chedev. All rights reserved.
//


class InteractorManager {

    private var appConfiguration: AppConfiguration

    init(appConfiguration: AppConfiguration) {
        self.appConfiguration = appConfiguration
    }

    func newImageInteractor() -> ImageInteractor {
        return ImageInteractor()
    }

}
