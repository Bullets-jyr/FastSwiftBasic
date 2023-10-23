//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/10/23.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Bullets"
    var age: Int = 33
    var height: Float = 175.5
    var weight: Double = 88.5
    var havePet: Bool = true
    
    var body: some View {
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

#Preview {
    VariableType()
}
