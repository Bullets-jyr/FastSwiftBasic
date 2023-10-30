//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/23/23.
//

import SwiftUI

struct Choice: View {
    
//    var direction: String = "서"
    var direction: Direction = .north
//    var member: String = "블렛츠"
//    var memeber: Member = Member.bullets (어차피 Member이기 때문에 아래 처럼 생략 가능, struct, class, enum
    var memeber: Member = .bullets
//    var menu: Menu = .steak("미디움")
    var menu: Menu = .steak(5)
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Member: String {
    case bullets = "블렛츠"
    case tom = "톰"
    case bami = "바미"
    case koko = "코코"
}

enum Member2: String {
    case bullets, tom, bami, koko
}

enum Menu {
    case pasta
    case pizza
    // 연관된 값을 추가로 넣어줄 수 있습니다.
//    case steak(String)
    case steak(Int)
}

//enum Direction: String {
//    case north = "북"
//    case west = "서"
//    case east = "동"
//    case south = "남"
//}

#Preview {
    Choice()
}
