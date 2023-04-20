//
//  JokeView.swift
//  Jokes
//
//  Created by dyhidrogen monoxide on 2023/4/14.
//

import SwiftUI

struct JokeView: View {
    
    
    
    @State var punchlineOpacity = 0.0
    
    @State var currentJoke: Joke?
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                if let currentJoke = currentJoke {
                    
                    Text(currentJoke.setup)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        withAnimation(.easeIn(duration: 1.0)) {
                            punchlineOpacity = 1.0
                        }
                    }, label: {
                        Image(systemName: "arrow.down.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .tint(.black)
                        
                    })
                    
                    Text(currentJoke.punchline)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .opacity(punchlineOpacity)
                    
                } else {
                    ProgressView()
                    
                }
                
                
               
            }
            .navigationTitle("Random Jokes")
        }
    }
}


struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
