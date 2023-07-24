//
//  PokemonDetailsView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import CachedAsyncImage
import SwiftUI

struct PokemonDetailsView: View {
    private var id: Int

    @StateObject private var vm: ViewModel

    init(id: Int) {
        self.id = id
        _vm = StateObject(wrappedValue: ViewModel(id: id))
    }

    var body: some View {
        VStack {
            if let species = vm.species, let pokemon = vm.pokemon {
                PokemonSpriteView(id: id)

                Text(species.englishName())

                HStack {
                    ForEach(pokemon.types!, id: \.type.name) { type in
                        Text(type.type.name.capitalized)
                    }
                }
            } else {
                ProgressView()
            }
        }
        .task {
            vm.fetchData()
        }
    }
}

struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsView(id: 149)
    }
}
