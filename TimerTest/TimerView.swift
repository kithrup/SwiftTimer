//
//  TimerView.swift
//  TimerTest
//
//  Created by Sean Eric Fagan on 7/9/20.
//  Copyright © 2020 Kithrup Enterprises, Ltd. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var timerModel : TimerModel
    
    init(_ interval : Double = 1.0) {
        self.timerModel = TimerModel(interval)
    }
    init(viewModel: TimerModel) {
        self.timerModel = viewModel
    }
    var body: some View {
        HStack {
            Text("Counter")
            Spacer()
            Text("\(self.timerModel.counter)")
        }
    }
}

struct TimerListView : View {
    @ObservedObject var timers : TimerListViewModel

    init(_ intervals : [Double] = [1.0]) {
        timers = TimerListViewModel(intervals)
    }
    
    var body: some View {
        List {
            ForEach(self.timers.timers) { i in
                TimerView(viewModel: i)
                Spacer()
            }
        }
//        Text("\(timers.count) timers")
    }
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
