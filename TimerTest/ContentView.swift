//
//  ContentView.swift
//  TimerTest
//
//  Created by Sean Eric Fagan on 7/9/20.
//  Copyright © 2020 Kithrup Enterprises, Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("One second interval")
                Spacer()
                TimerView(viewModel: TimerModel(1.0))
            }
            HStack {
                Text("Two second interval")
                Spacer()
                TimerView(viewModel : TimerModel(2.0))
            }
            HStack {
                Text("Half second interval")
                Spacer()
                TimerView(viewModel : TimerModel(0.5))
            }
            HStack {
                Text("Quarter second interval")
                Spacer()
                TimerView(viewModel : TimerModel(0.25))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
