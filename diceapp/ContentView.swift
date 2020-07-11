//
//  ContentView.swift
//  diceapp
//
//  Created by P Kris on 6/17/20.
//  Copyright © 2020 Aditi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber = 1
    @State var image = "dice 1"
    @State var imagesArray = ["dice 1", "dice 2", "dice 3", "dice 4", "dice 5", "dice 6"]
    
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Dice App!").font(Font.custom("Papyrus", size: 30)).foregroundColor(Color.pink)
            Spacer()
            Text("Click on the button to roll the dice.").font(Font.custom("Papyrus", size: 23)).foregroundColor(Color.blue)
            Spacer()
            Image(image).resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 21.0)
            Spacer()
            Button(action: {
                print("Button pressed ")
                self.randomNumber()
                self.updateImage()
                
            }) {
                Text("Click here to roll the dice").font(Font.custom("Papyrus", size: 30)).foregroundColor(Color.pink)
        
            }
            Spacer()
        }
    }
    
    func randomNumber() {
        diceNumber = Int.random(in: 1...6)
        print(diceNumber)
    }
    
    func updateImage() {
        image = imagesArray[diceNumber - 1]
//        if diceNumber == 1 {
//            image = "dice 1"
//        }
//        else if diceNumber == 2 {
//            image = "dice 2"
//        }
//        else if diceNumber == 3 {
//            image = "dice 3"
//        }
//        else if diceNumber == 4 {
//            image = "dice 4"
//        }
//        else if diceNumber == 5 {
//        image = "dice 5"
//
//        }
//        else if diceNumber == 6 {
//        image = "dice 6"
//
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
