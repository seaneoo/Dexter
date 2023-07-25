//
//  DexView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import SwiftUI

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
                    DexCellView(name: result.name)
                        .task {
                            if result.name == vm.results.last?.name {
                                vm.fetch()
                            }
                        }
                    Divider()
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
