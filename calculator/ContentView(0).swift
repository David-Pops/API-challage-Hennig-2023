import SwiftUI

struct ContentView: View {
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


