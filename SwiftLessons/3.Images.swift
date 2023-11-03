//
//  Images.swift
//  SwiftLessons
//
//  Created by Паша on 1.11.23.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun.fill")
                .font(.largeTitle)
                .padding(30)
                .background(Color.green)
                .foregroundColor(.red)
            .clipShape(Capsule()) 
            Spacer()
                .frame(height: 100)
            Text("Hello, Apple")
                .background(
                Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200))
        }
    }
        
}

#Preview {
    Images()
}
