//
//  DexView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import SwiftUI

// TODO: Temporary
struct Cell: View {
    let result: NamedAPIResource

    var body: some View {
        ZStack {
            Color.red
            Text(result.name)
        }
        .frame(height: 200)
    }
}

struct DexView: View {
    @ObservedObject private var vm = ViewModel()

    var body: some View {
        VStack {
            if vm.results.count > 0 {
                list
            }
        }
        .task {
            vm.fetch()
        }
    }

    var list: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(vm.results, id: \.name) { result in
                    Cell(result: result)
                        .task {
                            if result.name == vm.results.last?.name {
                                vm.fetch()
                            }
                        }
                }
            }
        }
    }
}

struct DexView_Previews: PreviewProvider {
    static var previews: some View {
        DexView()
    }
}
