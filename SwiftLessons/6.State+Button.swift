//
//  State&Button.swift
//  SwiftLessons
//
//  Created by Паша on 2.11.23.
//

import SwiftUI

struct State_Button: View {
    
    @State private var showDetail = false
    
    var body: some View {
        Button(action: {
            self.showDetail.toggle()
        }, label: {
            Text("Show details")
        })
        .padding()
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
        if showDetail {
            Text("Some details here")
                .font(.largeTitle)
                .padding()
        }
    }
}

#Preview {
    State_Button()
}
