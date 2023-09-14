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
        ZStack{
            Rectangle()
                .background(.black)
            
            VStack{
                Spacer()
                Spacer()
                Text("0")
                    .font(.system(size: 80))
                    .frame(width: 380, height: 78, alignment: .trailing)
                    .foregroundColor(.white)
                
                
                
                HStack{
                    numberButton(buttonNumber: "AC", buttonColor: .gray, textColor: .black)
                    numberButton(buttonNumber: "+/-", buttonColor: .gray, textColor: .black)
                    numberButton(buttonNumber: "%", buttonColor: .gray, textColor: .black)
                    numberButton(buttonNumber: "÷", buttonColor: .orange, textColor: .white)
                    
                }
                
                mainButtonRow(textOne: "7", textTwo: "8", textThree: "9", textFour: "x")
                mainButtonRow(textOne: "4", textTwo: "5", textThree: "6", textFour: "-")
                mainButtonRow(textOne: "1", textTwo: "2", textThree: "3", textFour: "+")
                
                HStack{
                    ZStack{
                        Capsule()
                            .foregroundColor(.gray)
                            .frame(width: 195, height: 90)
                        Text("0")
                            .font(.largeTitle)
                    }
                    .colorInvert()
                    numberButton(buttonNumber: ".", buttonColor: .gray, textColor: .black)
                        .colorInvert()
                    numberButton(buttonNumber: "=", buttonColor: .orange, textColor: .white)
                    
                }
            }
        }
        
    }
}




func numberButton(buttonNumber: String, buttonColor: Color, textColor: Color) -> some View{
    var body: some View{
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
            Text("\(buttonNumber)")
                .font(.system(size: 35))
                .foregroundColor(textColor)
                .ignoresSafeArea()
            
        }
    }
    return body
}

func mainButtonRow(textOne: String, textTwo: String, textThree: String, textFour: String) -> some View{
    var body : some View{
        HStack{
            numberButton(buttonNumber: textOne, buttonColor: .gray, textColor: .black)
                .colorInvert()
            numberButton(buttonNumber: textTwo, buttonColor: .gray, textColor: .black)
                .colorInvert()
            numberButton(buttonNumber: textThree, buttonColor: .gray, textColor: .black)
                .colorInvert()
            numberButton(buttonNumber: textFour, buttonColor: .orange, textColor: .white)
        }
    }
    return body
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
