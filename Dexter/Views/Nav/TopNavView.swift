//
//  TopNavView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/25/23.
//

import SwiftUI

struct TopNavView: View {
    var body: some View {
        HStack(spacing: 10) {
            Text("Dexter")
                .font(.largeTitle)
                .fontWeight(.black)

            Spacer()

            // SELECT GAME VERSION
            Menu {
                // TODO:
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

            // GO TO SETTINGS VIEW
            NavigationLink {
                Text("Settings") // TODO:
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
        .padding(.bottom, 5)
        .background(.ultraThinMaterial)
        .overlay(Divider(), alignment: .bottom)
    }
}

struct TopNavView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavView()
    }
}
