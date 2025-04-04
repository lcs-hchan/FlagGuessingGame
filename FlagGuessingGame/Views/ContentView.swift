//
//  ContentView.swift
//  FlagGuessingGame
//
//  Created by hayden on 2025-04-03.
//

import SwiftUI

struct ContentView: View {
     
    @State private var currentflag = allflags.randomElement()!
    @State private var option: [Flag] = []
    
    @State private var selectedFlag: Flag? = nil
    
  
    
    var body: some View {
        
            VStack {
                Text(currentflag.image)
                    .font(.system(size: 50))
                HStack{
                    ForEach(option, id: \..name){ flag in
                        Button(flag.name){
                            selectedFlag = flag
                            checkWin()
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
            }
            .onAppear(perform: generateOptions)
    }
    func generateOptions(){
        var tempOptions: Set<Flag> = [currentflag]
        
        while tempOptions.count < 4{
            if let newFlag = allflags.randomElement(){
                tempOptions.insert(newFlag)
            }
        }
        option = Array(tempOptions).shuffled()
    }
    
    func checkWin(){
        if let selected = selectedFlag {
                    print(selected.name == currentflag.name ? "Correct" : "Incorrect")
                }
        }
    }


#Preview {
    ContentView()
}
