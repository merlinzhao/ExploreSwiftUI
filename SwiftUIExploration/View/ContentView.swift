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
     LandmarkList()
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#endif
