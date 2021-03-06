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

class TimerModel : ObservableObject, Identifiable {
    @Published private(set) var counter = 0
    private(set) var rate : Double
    private(set) var timer = Timer()
    let id = UUID()
    
    init(_ interval : Double = 1.0) {
        self.rate = interval
        timer = Timer(timeInterval: interval, repeats: true) { t in
            self.counter += 1
            print("Set counter to \(self.counter)")
        }
        RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
    }
}
