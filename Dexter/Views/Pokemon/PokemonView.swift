//
//  PokemonView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import SwiftUI

struct PokemonView: View {
    @StateObject private var vm: ViewModel

    let name: String

    init(name: String) {
        self.name = name
        _vm = StateObject(wrappedValue: ViewModel(name: name))
    }

    var body: some View {
        VStack {
            if let species = vm.species, let pokemon = vm.pokemon {
                PokemonSpriteView(id: species.id)
                    .frame(height: 200)

                Text(species.translate())
                    .font(.title)
                    .fontWeight(.bold)

                if let types = pokemon.types {
                    HStack {
                        ForEach(types, id: \.slot) { type in
                            Text(type.type.name.uppercased())
                                .fontWeight(.bold)
                                .padding(.all, 5)
                                .frame(width: 100)
                                .background(PkmnTypeColors(rawValue: type.type.name)?.color)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .task {
            vm.fetch()
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(name: "charizard")
    }
}
