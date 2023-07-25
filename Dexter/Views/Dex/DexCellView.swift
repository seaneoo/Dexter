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
            if let result = vm.result {
                HStack(spacing: 10) {
                    PokemonSpriteView(id: result.id)
                        .frame(height: 50)

                    Text(result.formattedId())
                    Text(result.translate(lang: .en))

                    Spacer()
                }
            } else {
                ProgressView()
            }
        }
        .padding(.all)
        .task {
            vm.fetch()
        }
    }
}

struct DexCellView_Previews: PreviewProvider {
    static var previews: some View {
        DexCellView(name: "eevee")
    }
}
