//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/18/23.
//

import SwiftUI

struct Diff: View {
    let myCar = Car(name: "머스탱", owner: "류지영")
    // @ObservedObject: 관찰 중...
    @ObservedObject var myKar = Kar(name: "머스탱2", owner: "류지영2")
    // 이전 값을 가지고 있습니다. (다시 초기화 되지 않습니다.)
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            
            Button(action: {
                let broCar = myKar
                broCar.name = "동생차"
                broCar.owner = "동생"
                myKar.sayHi()
            }, label: {
                Text("출발")
            })
        }
    }
}

struct Car {
    let name: String
    let owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
}

// ObservableObject: 관찰이 가능한 객체
class Kar: ObservableObject {
    // @Published: 배포, 변경 감지 기준
    @Published var name: String
    var owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diff()
}
