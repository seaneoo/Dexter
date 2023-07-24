//
//  ContentView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    if let data = vm.data {
                        ForEach(data.results, id: \.name) { item in
                            Text(item.name)
                        }
                    } else {
                        ProgressView()
                    }
                }
            }
            .navigationTitle("Dexter")
            .padding([.horizontal])
            .task {
                vm.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
