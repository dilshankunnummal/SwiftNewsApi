//
//  SearchView.swift
//  ExamapiNews
//
//  Created by Adhil Hamid on 09/12/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = ExamModel()
    var body: some View {
        
        NavigationView{
            List{
                (viewModel: viewModel){
                    scope in
                    NavigationLink {
                        DetailsView(viewModel: viewModel,item = scope)
                    } label: {
                        Text(scope.scope)
                    }

                }
            }
        }
    }
}

#Preview {
    SearchView()
}
