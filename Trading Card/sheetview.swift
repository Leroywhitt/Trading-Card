//
//  new.swift
//  Trading Card
//
//  Created by Leroy Whitt on 9/28/23.
//

import SwiftUI

struct sheetview: View {
    var body: some View {
        
        VStack{
            Spacer()
            Spacer()
            Spacer()
            Text("You are destined for Greatness, \nbelieve in yourself and go for it!")
                .bold()
                .font(.headline)
            HStack{
                Image(systemName: "star.fill")
                    .resizable()
                Image(systemName: "star.fill")
                    .resizable()
                Image(systemName: "star.fill")
                    .resizable()
            }
                Image("Lee1")
                    .resizable()
                    .scaledToFill()
                
                
            
        }
        
        .background(
            LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .top, endPoint: .bottom))
      
    }
       
}

struct sheetview_Previews: PreviewProvider {
    static var previews: some View {
        sheetview()
    }
}
