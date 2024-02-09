//
//  ContentView.swift
//  FlippingAnimationSwiftUI
//


import SwiftUI

struct ContentView: View {
    @State var flipCoin: Bool = false
    private var coinImage = [Constants.head, Constants.tail]
    
    var body: some View {
        VStack {
            if flipCoin {
                coin
            } else {
                coin
            }
        }
        .rotation3DEffect(Angle(degrees: flipCoin ? 1080 : 0), axis: (x: 1, y: 0, z: 0))
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.5)) {
                flipCoin.toggle()
            }
        }
    }
    
    private var coin: some View { 
        Image(coinImage.randomElement()!)
            .resizable()
            .frame(width: 250, height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
