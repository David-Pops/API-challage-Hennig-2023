//
//  ContentView.swift
//  calculator
//
//  Created by David Popowski on 9/8/23.
//

import SwiftUI
import CoreData


enum Flavor: String, CaseIterable, Identifiable {
    case calculatorWa, ShapesWa
    var id: Self { self }
}

struct ContentView: View {
    @State private var selectedNumber: Int = 32
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
                NavigationLink("erw", destination: Shapes())
                    .Text("erw")
            }
        }
    }
}

struct Shapes: View {
    var body: some View {
        VStack(spacing: 20.0) {
            //Circle
            VStack(alignment: .leading, spacing: 7){
                
                Circle()
                    .frame(width: 395, height: 100, alignment: .leading).ignoresSafeArea()
                    .background(.blue)
            }
            //Rectangle
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.green)
                Rectangle()
                    .trim(from: 0.0, to: 0.67)
                    .rotation(Angle(degrees: -180))
                    .foregroundColor(.white)
                    .position(x: 0.01, y: 94.75)
            }
            
            //Ellipse
            Ellipse()
                .background(Color.brown)
                .overlay(Ellipse().stroke(Color.orange, lineWidth: 5))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            //Capsule
            Capsule(style: .circular)
                .fill(Color.cyan)
                .frame(width: 300, height: 100)
            
            //RoundedRectangle
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            //Square in A Square
            ZStack{
                Rectangle()
                    .frame(width: 100, height: 100)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(.blue)
            }
            //Rounded Rectangle
            ZStack(){
                RoundedRectangle(cornerRadius: 9)
                    .frame(width: 300, height: 50)
                    .foregroundColor(.blue)
                
                Text("Click Me")
                    .foregroundColor(.white)
                    .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 35))
            }
            //Yellow Triangle
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
