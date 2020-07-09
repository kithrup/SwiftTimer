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
    
    init() {
        self.timerModel = TimerModel()
    }
    init(viewModel: TimerModel) {
        self.timerModel = viewModel
    }
    var body: some View {
        VStack {
            Text("Counter")
            Spacer()
            Text("\(self.timerModel.counter)")
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
