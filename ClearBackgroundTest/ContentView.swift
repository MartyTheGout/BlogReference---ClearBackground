//
//  ContentView.swift
//  ClearBackgroundTest
//
//  Created by 통붕엔삼겹 on 2024/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var isPresent = false
    
    var body: some View {
        VStack {
            Image("Rabbit_Head")
                .onTapGesture {
                    isPresent.toggle()
                }
                .fullScreenCover(isPresented: $isPresent ) {
                        VStack {
                            Spacer()
                        Image(systemName: "arrow.up")
                        Text("This is Rabbit").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        .frame(maxWidth: .infinity)
                        .background(ClearBackground())
                        .background(.black.opacity(0.1))
                    }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
