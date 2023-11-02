//
//  5.State&Toogle.swift
//  SwiftLessons
//
//  Created by Паша on 2.11.23.
//

import SwiftUI

struct StateAndToggle: View {
    
    @State private var showHello = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $showHello) {
                Text("Show Hello")
            } .padding()
            if showHello {
                Text("Hello")
            }
        }
    }
}

#Preview {
    StateAndToggle()
}
