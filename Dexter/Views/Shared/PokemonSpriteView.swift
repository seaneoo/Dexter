//
//  PokemonSpriteView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import CachedAsyncImage
import SwiftUI

struct PokemonSpriteView: View {
    var id: Int
    var style: SpriteStyle
    var shiny: Bool

    private var urlStr: String

    init(id: Int, style: SpriteStyle = .official, shiny: Bool = false) {
        self.id = id
        self.style = style
        self.shiny = shiny

        urlStr = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(self.style.rawValue)" + (self.shiny ? "/shiny" : "")
    }

    var body: some View {
        if let url = URL(string: self.urlStr + "/\(self.id).png") {
            CachedAsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

extension PokemonSpriteView {
    enum SpriteStyle: String {
        case official = "other/official-artwork", home = "other/home"
    }
}

struct PokemonSpriteView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonSpriteView(id: 133, style: .official, shiny: true)
    }
}
