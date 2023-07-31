//
//  DexCellView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import SwiftUI

struct DexCellView: View {
    @StateObject private var vm: ViewModel

    let name: String

    init(name: String) {
        self.name = name
        _vm = StateObject(wrappedValue: ViewModel(name: name))
    }

    var body: some View {
        VStack {
            if let species = vm.species, let pokemon = vm.pokemon {
                ZStack {
                    if let types = pokemon.types {
                        HStack(spacing: 0) {
                            ForEach(types, id: \.slot) { type in
                                PkmnTypeColors(rawValue: type.type.name)?.color
                            }
                        }
                    }

                    HStack(spacing: 10) {
                        PokemonSpriteView(id: species.id)
                            .frame(height: 50)

                        Text(species.formattedId())
                        Text(species.translate(lang: .en))

                        Spacer()
                    }
                    .padding(.all)
                }
            } else {
                ProgressView()
                    .padding(.all)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("Background"))
        .task {
            vm.fetch()
        }
    }
}

struct DexCellView_Previews: PreviewProvider {
    static var previews: some View {
        DexCellView(name: "dragonite")
    }
}
