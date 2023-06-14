//
//  ContentView.swift
//  Day32_pj6
//
//  Created by Elias Breitenbach on 24.05.23.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        
        Button("Tap Me") {
            enabled.toggle()
            //        do nothing
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
    }
}
        
    
//    Controlling the animation stack
    
    //    Creating explicit animations
//
//    @State private var animationAmount = 0.0
//
//    var body: some View {
//
//        Button("Tap Me") {
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//
//    }
//}


    
    
    
    
    
    //    Animating bindings
//    @State private var animationAmount = 1.0
//
//    var body: some View {
//        print(animationAmount)
//
//
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(.easeOut(duration: 1).repeatCount(3, autoreverses: true)), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
//    }
//}
    
//    Customizing animations in SwiftUI

//    @State private var animationAmount = 1.0
//
//    var body: some View {
//        Button("Tap Me") {
//            //            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
//        )
//        .onAppear {
//            animationAmount = 2
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
