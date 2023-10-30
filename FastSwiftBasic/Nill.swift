//
//  Nill.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/25/23.
//

import SwiftUI

struct Nill: View {
    
    var name: String = "Leeo"
    var petName: String? = "없음"
    
    var bami: String = "Bami"
    var petName2: String = "coco"
    
    var body: some View {
        VStack {
//            Text("이름은 \(name) 펫 네임은 \(petName)입니다.")
            Text("이름은 \(bami) 펫 네임은 \(petName2)입니다.")
        }
        .onAppear {
            print("이름은 \(name) 펫 네임은 \(petName)입니다.")
            print("이름은 \(bami) 펫 네임은 \(petName2)입니다.")
        }
    }
}

#Preview {
    Nill()
}
