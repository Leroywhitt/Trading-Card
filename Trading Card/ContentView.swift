//
//  ContentView.swift
//  Trading Card
//
//  Created by Leroy Whitt on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var sheet = false
    @State private var heartPulse: CGFloat = 1
    var body: some View {
        ZStack{
         //   Color.green.ignoresSafeArea()
            VStack {
                Text("Leroy Whitt")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                HStack {
                    Spacer()
                    Text("*Him/Him*")
                        .font(.headline)
                }
                Spacer()
                Image("Lee")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(.blue, style: StrokeStyle(lineWidth: 15))
                    )
                    .frame(width: 300, height: 300)
                                .foregroundColor(.red)
                                .scaleEffect(heartPulse)
                                .shadow(color: .pink, radius: 10)
                                .onAppear{
                                    withAnimation(.easeInOut.speed(0.2).repeatForever(autoreverses: true)) {
                                        heartPulse = 1.25 * heartPulse
                                    }
                                }
                    .onTapGesture {
                        sheet.toggle()
                    }
                    .sheet(isPresented: $sheet) {
                        sheetview()
                    }
                HStack {
                    Image(systemName: "sparkles")
                        .foregroundColor(.red)
                    Text("Man with the plan")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .padding()
                    Image(systemName: "sparkles")
                        .foregroundColor(.red)
                    
                }
                Spacer()
               
                HStack {
                    Text("Strengths:")
                        .bold()
                    Text("Highly intelligent, extremely charming, wity, and savy.")
                     
                        .cornerRadius(5)
                        .shadow(color: .blue, radius: 5)
                }
                HStack {
                    Text("Weaknesses:")
                        .bold()
                    Text("Sundresses and beautiful smiles 😍")
                        .shadow(color:.blue, radius: 5)
                    Spacer()
                }
            }
            .padding()
            
        .padding()
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .top, endPoint: .bottom)
            )
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
