//
//  Option.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/30/23.
//

import SwiftUI

struct Option: View {
    
//    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
//    var leeo: People? = People(name: "Leeo")
    var leeo: People?
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "bami", petName: "cookie")
    var user1 = People(name: "")
    
    var body: some View {
        VStack {
            
            if let leeo = leeo {
                if let mbti = leeo.mbti {
                    if let name = mbti.name {
                        
                    }
                }
            }
            if let leeoMbtiName = leeo?.mbti?.name {
                Text(leeoMbtiName)
            } else {
                Text("No MBTI name")
            }
            
//            if let petName = leeo.petName {
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(leeo.name) 애완동물 이름은 없어요")
//            }
            
            if let petName = bami.petName {
                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            }
            
//            if leeo.petName == "" {
//                Text("이름은 \(leeo.name) 애완동물 이름은 없어요")
//            } else {
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(leeo.petName)")
//            }
            
//            Text("이름은 \(leeo.name) 애완동물 이름은 \(leeo.petName)")
//            Text("이름은 \(bami.name) 애완동물 이름은 \(bami.petName)")
//            Text("이름은 \(berry.name) 애완동물 이름은 \(berry.petName)")
        }
    }
}

struct People {
    let name: String
//    var petName: String = ""
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}
