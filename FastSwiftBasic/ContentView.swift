//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/6/23.
//

import SwiftUI

struct ContentView: View {
    
//    var place: String = "Paris"
    var name: String = "블렛츠"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요!")
            Text("\(name)님의 포인트는 343점 입니다.")
            Text("\(name)님 안녕히가세요.")
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
