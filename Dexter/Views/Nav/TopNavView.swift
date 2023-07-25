//
//  TopNavView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/25/23.
//

import SwiftUI

struct TopNavView: View {
    var body: some View {
        HStack {
            Text("Dexter")
                .font(.largeTitle)
                .fontWeight(.black)

            Spacer()

            Menu {
                // TODO: open game selector
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)

                    Image(systemName: "circle.grid.cross.left.filled")
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                }
            }

            NavigationLink {
                Text("Settings") // TODO: make settings view
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)

                    Image(systemName: "gear")
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
        .frame(height: 75)
        .background(.ultraThinMaterial)
    }
}

struct TopNavView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavView()
    }
}
