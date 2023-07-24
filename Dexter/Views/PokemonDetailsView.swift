//
//  PokemonDetailsView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

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
            if let species = vm.species {
                Text(species.name)
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
        PokemonDetailsView(id: 25)
    }
}
