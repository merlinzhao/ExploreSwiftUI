//
//  CircleImage.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 1/24/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
    
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10 )
            
        }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
