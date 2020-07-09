//
//  TimerViewModel.swift
//  TimerTest
//
//  Created by Sean Eric Fagan on 7/9/20.
//  Copyright © 2020 Kithrup Enterprises, Ltd. All rights reserved.
//

import Foundation

class TimerViewModel : ObservableObject, Identifiable {
    @Published var timer : TimerModel

    init() {
        timer = TimerModel()
    }
}
