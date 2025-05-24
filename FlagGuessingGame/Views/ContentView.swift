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
    
    @State private var currentOutcome: Outcome = .undetermined
     
    @State private var history: [Result] = []
    
    @State private var searchText = ""

    
    var body: some View {
        
            VStack {
                Text(currentOutcome.rawValue)
                Text(currentflag.image)
                    .font(.system(size: 50))
                HStack{
                    ForEach(option){ flag in
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
                Button{
                    history.insert(Result(flagName: currentflag, flagImage: currentflag, outcome: currentOutcome), at: 0)
                    generateOptions()
                    
                }label: {
                    Text("New flag")
                }
            }
        TextField("Enter a country", text: $searchText)
            .padding()
        List(filtering(originalList: history, newsearchText: searchText)) { currentresult in
            HStack{
                Text(currentresult.flagImage.image)
                Text(currentresult.flagName.name)
                Spacer()
                Text(currentresult.outcome.rawValue)
            }
            
        }
            .onAppear(perform: generateOptions)
    }
    
    // This generate option code was written with the assistance of chatGPT
    func generateOptions(){
        
        var newFlag: Flag
        // If new flag = currentflag, that it will repeat until it gets a different flag from the array
        repeat {
               newFlag = allflags.randomElement()!
           } while newFlag == currentflag
        // when a new flag is generated, it becomes the current flag
           currentflag = newFlag
        
        // Ensures that within all the options, there is one that is correct and there will be no repeats
        var tempOptions: Set<Flag> = [currentflag]
        // Loop until there are four options
        
        while tempOptions.count < 4{
            // when a random flag is found in the all flags array in random
            if let randomOptions = allflags.randomElement(){
                // insert the flag in the tempOptions array
                tempOptions.insert(randomOptions)
            }
        }
        // shuffle the array from all the options
        option = Array(tempOptions).shuffled()
        currentOutcome = .undetermined
    }
    
    func checkWin(){
        if selectedFlag?.name ==  currentflag.name{
            currentOutcome = .correct
        }else{
            currentOutcome = .incorrect
        }
        }
    }
    


#Preview {
    ContentView()
}
