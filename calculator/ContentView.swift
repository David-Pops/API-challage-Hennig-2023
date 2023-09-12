//
//  ContentView.swift
//  calculator
//
//  Created by David Popowski on 9/8/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View{
        VStack{
            Text("0")
                .font(.largeTitle)
                .frame(width: 380, height: 78, alignment: .trailing)
                .background(.blue)
            
            
            
            HStack{
                numberButton(buttonNumber: "AC", buttonColor: .gray)
                numberButton(buttonNumber: "+/-", buttonColor: .gray)
                numberButton(buttonNumber: "%", buttonColor: .gray)
                numberButton(buttonNumber: "÷", buttonColor: .orange)
                
            }
            
            
            mainButtonRow(textOne: "7", textTwo: "8", textThree: "9", textFour: "X")
            mainButtonRow(textOne: "4", textTwo: "5", textThree: "6", textFour: "-")
            mainButtonRow(textOne: "1", textTwo: "2", textThree: "3", textFour: "+")
        
            
        }
        .background(.black)
    }
}




func numberButton(buttonNumber: String, buttonColor: Color) -> some View{
    var body : some View{
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
            Text("\(buttonNumber)")
                .font(.largeTitle)
        }
    }
    return body
}

func mainButtonRow(textOne: String, textTwo: String, textThree: String, textFour: String) -> some View{
    var body : some View{
        HStack{
            numberButton(buttonNumber: textOne, buttonColor: .gray)
                .colorInvert()
            numberButton(buttonNumber: textTwo, buttonColor: .gray)
                .colorInvert()
            numberButton(buttonNumber: textThree, buttonColor: .gray)
                .colorInvert()
            numberButton(buttonNumber: textFour, buttonColor: .orange)
        }
    }
    return body
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
