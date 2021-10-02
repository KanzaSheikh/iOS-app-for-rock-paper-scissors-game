//
//  ContentView.swift
//  RPS-game
//
//  Created by Kanza Shaikh on 10/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var playerItem:String = ""
    @State var cpuItem:String = ""
    @State var playerScore = 0
    @State var cpuScore = 0

    var body: some View {
        
        ZStack {
            Image("background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Text("Rock Paper Scissors")
                    .font(.largeTitle)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.yellow/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack {
                    Spacer()
                    Image(playerItem)
                    Spacer()
                    Image(cpuItem)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    //generate a random value for player and cpu items
                    let playerRand = Int.random(in: 1...3)
                    let cpuRand = Int.random(in: 1...3)
                    //get the player and cpu items
                    playerItem = "item" + String(playerRand)
                    cpuItem = "item" + String(cpuRand)
                    
                    //logic to score points
                    // playerScore += 1
                    // cpuScore += 1
                    if (playerRand==1 && cpuRand==2){
                        cpuScore += 1
                    }
                    
                    else if (playerRand==1 && cpuRand==3) {
                        playerScore += 1
                    }
                    
                    else if (playerRand==2 && cpuRand==3) {
                        cpuScore += 1
                    }
                    
                    else if (playerRand==2 && cpuRand==1) {
                        playerScore += 1
                    }
                    
                    else if (playerRand==3 && cpuRand==1) {
                        cpuScore += 1
                    }
                    
                    else if (playerRand==3 && cpuRand==2) {
                        playerScore += 1
                    }
                    
                }, label: {
                    Image("play")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").foregroundColor(Color.white).padding()
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").foregroundColor(Color.white).padding()
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
