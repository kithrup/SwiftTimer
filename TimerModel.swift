//
//  TimerModel.swift
//  TimerTest
//
//  Created by Sean Eric Fagan on 7/9/20.
//  Copyright © 2020 Kithrup Enterprises, Ltd. All rights reserved.
//

import Foundation

/*
 * A simple class to implement a timer, and then increment a variable.
 */

class TimerModel : ObservableObject {
    @Published private(set) var counter = 0
    var timer = Timer()
    
    init(_ interval : Double = 1.0) {
        timer = Timer(timeInterval: interval, repeats: true) { t in
            self.counter += 1
            print("Set counter to \(self.counter)")
        }
        RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
    }
}
