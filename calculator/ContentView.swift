//
//  ContentView.swift
//  calculator
//
//  Created by David Popowski on 9/8/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
            
        
        VStack {
            HStack{
                Circle()
                    .foregroundColor(.gray)
                Circle()
                    .foregroundColor(.gray)
                Circle()
                    .foregroundColor(.gray)
                Circle()
                    .foregroundColor(.orange)
                
            }
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.orange)
                
            }
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.orange)
                
            }
            HStack{
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.gray)
                    .colorInvert()
                Circle()
                    .foregroundColor(.orange)
                
            }
                        
                
                
            
        }
    }
}

func numberButton(buttonNumber: String, buttonColor: Color){
    var body : some View{
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
            Text("\(buttonNumber)")
        }
    }
}

func mainButtonRow(textOne: String, textTwo: String, textThree: String, textFour: String){
    var body : some View{
        HStack{
            //numberButton(buttonNumber: textOne, buttonColor: .gray)
            //.colorInvert()
            //numberButton(buttonNumber: textTwo, buttonColor: .gray)
            //.colorInvert()
            //numberButton(buttonNumber: textThree, buttonColor: .gray)
            //.colorInvert()
            //numberButton(buttonNumber: textFour, buttonColor: .orange)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
