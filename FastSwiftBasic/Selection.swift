//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/24/23.
//

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Direction = .west
    
    var body: some View {
        
        VStack {
            switch myDirection {
            case .north:
                Text("북쪽은 추워요")
            case .west:
                Text("서쪽은 석양이 예뻐요")
            case .east:
                Text("동쪽으로 해 보러 갈래요?")
            case .south:
                Text("남쪽으로 쉬러가요")
            default:
                Text("에러입니다.")
            }
            
            Button {
                
                if myDirection == .north {
                    myDirection = .east
                } else {
                    myDirection = .north
                }
                
                switch myDirection {
                case .north, .west:
                        myDirection = .east
                case .east:
                    myDirection = .south
                case .south:
                    myDirection = .west
//                case .south:
//                    myDirection = .west
                default:
                    myDirection = .north
                }
//                myDirection = .east
            } label: {
                Text("돌리기")
            }
        }
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
//    case myWay
//    case back
}

#Preview {
    Selection()
}
