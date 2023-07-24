//
//  PokemonCellView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import CachedAsyncImage
import SwiftUI

struct PokemonCellView: View {
    private var id: Int

    @StateObject private var vm: ViewModel

    init(id: Int) {
        self.id = id
        _vm = StateObject(wrappedValue: ViewModel(id: id))
    }

    var body: some View {
        VStack {
            if let species = vm.species {
                PokemonSpriteView(id: species.id)
            }
        }
        .task {
            vm.fetchSpecies()
        }
    }
}

struct PokemonCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCellView(id: 25)
    }
}
