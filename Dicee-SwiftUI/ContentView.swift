//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Gus Adi on 09/08/20.
//  Copyright © 2020 Gusadi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var rightDiceNumber: Int = 1
    @State var leftDiceNumber: Int = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(15)
            }
        }
    }
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
