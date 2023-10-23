//
//  Function.swift
//  FastSwiftBasic
//
//  Created by xinapse on 10/16/23.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack {
            Text("Input Number is \(inputNumber)")
            
            Button {
//                inputNumber = inputNumber + 5
                inputNumber = plusFive(with: inputNumber)
            } label: {
                Text("+5")
            }
        }
    }
    
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
}

#Preview {
    Function()
}
