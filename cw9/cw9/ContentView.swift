//
//  ContentView.swift
//  cw9
//
//  Created by Abdulmohsen Al Rasheed on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            
            movieInfo(movieName: "Aladdin", movieStars: ["Aladdin", "Jasmin", "Gene"])
            
            movieInfo(movieName: "Beauty And The Beast",movieStars:["Beauty", "Beast", "Father"])
            
            movieInfo(movieName: "Soul", movieStars: ["The Musicien Dude", "22", "The Musiciens Mother"])
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movieInfo: View {
    
    let movieName: String
    let movieStars: [String]
    
    var body: some View {
        
        HStack(alignment: .center) {
        
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                
                Text(movieName)
                    .font(.largeTitle)
                
                Text(movieStars.joined(separator: ", "))
            
            }
        } .padding(.vertical)
    }
}
