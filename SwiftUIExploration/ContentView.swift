//
//  ContentView.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 1/24/21.
//

import SwiftUI


// https://www.youtube.com/watch?v=IIDiqgdn2yo
struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
                .ignoresSafeArea( edges: .top)
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
                
                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#endif
