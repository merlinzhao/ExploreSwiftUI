//
//  FavoriteButton.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 2/1/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName:  isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.blue : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true)) //bc of binding, data will propagate back to data source
    }
}
