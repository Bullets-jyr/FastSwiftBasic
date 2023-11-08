//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by xinapse on 11/6/23.
//

import SwiftUI

//protocol Driveable: Identifiable {
protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

struct MyCar: View {
    
//    var myCar: Driveable?
    var myCar: KIA = KIA()
    var broCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    @State var speed: Int = 10
    
    var body: some View {
        VStack {
            Text("speed: \(speed)")
            
            Button {
//                speed = myCar.speedDown(with: speed)
                speed = broCar.speedDown(with: speed)
                cars.randomElement()?.speedDown(with: speed)
            } label: {
                Text("감속!")
            }
        }
        
//        ForEach(cars) { item in
//            
//        }
    }
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 줄어듭니다.")
        return speed - 5
    }
}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 촤촤촤 줄어들어요.")
        return speed - 9
    }
}

#Preview {
    MyCar()
}
