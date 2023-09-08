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








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
