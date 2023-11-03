//
//  11.Clicking&Gestures.swift
//  SwiftLessons
//
//  Created by Паша on 2.11.23.
//

import SwiftUI

struct _1_Clicking_Gestures: View {
    
    @State private var showEmoji = false
    
    var body: some View {
        VStack {
            Text("Tap me")
                .onTapGesture {
                    self.showEmoji.toggle()
            }
            Spacer()
                .frame(height: 100)
            Image("Apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count:2) {
                    self.showEmoji.toggle()
                }
            if showEmoji {
                Text("🤓")
                    .padding()
                    .font(.largeTitle)
            }
        }
        .contentShape(Rectangle())
        .gesture(
            LongPressGesture(minimumDuration: 1)
                .onEnded{ _ in
                    self.showEmoji.toggle()
                })
        
    }
}

#Preview {
    _1_Clicking_Gestures()
}
