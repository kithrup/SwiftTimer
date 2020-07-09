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

class TimerListViewModel : ObservableObject, Identifiable {
    @Published var timers : [TimerModel] = []
    
    init(_ intervals : [Double] = [1.0]) {
        for i in intervals {
            timers.append(TimerModel(i))
        }
    }
    var count : Int {
        return self.timers.count
    }
}
