//
//  Half.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/16/23.
//

import SwiftUI

struct Half: View {
    
    var name: String = "Bullets"
    var age: Int = 33
    
    var names: [String] = ["Bullets", "존", "바미", "테리우스", "올리비아"]
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("\(name)입니다")
//                Image(systemName: "pencil")
//            }
//            
//            Text("안녕하세요 \(age)살의 \(name)!")
//        }
        List {
//            Text("Bullets")
//            Text("존")
//            Text("바미")
//            Text("테리우스")
            ForEach(names, id: \.self) { name in
                var welcome = sayHi(to: name)
                if name == "Bullets" {
                    Text("기다렸어요. \(welcome)")
                } else {
                    Text(welcome)
                }
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다."
    }
}

#Preview {
    Half()
}
