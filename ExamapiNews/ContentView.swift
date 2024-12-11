//
//  ContentView.swift
//  ExamapiNews
//
//  Created by Adhil Hamid on 09/12/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ExamModel()
    var body: some View {
        TabView{
            SearchView(viewModel: viewModel).tabItem {
                VStack{
                    Text("Hello")
                    Image(systemName: "person")
                }
            }
            Favourites(viewModel: viewModel).tabItem {
                VStack{
                    Text("Favourites")
                    Image(systemName: "house")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
