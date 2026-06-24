//
//  AppetizerListView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 21.06.26.
//

import SwiftUI

struct AppetizerListView: View {
  @StateObject var viewModel = AppetizerListViewModel()
  @State private var isShowingDetail = false
  @State private var selectedAppetizer: Appetizer?
  
  var body: some View {
    ZStack {
      NavigationStack {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
            .onTapGesture {
              selectedAppetizer = appetizer
              isShowingDetail = true
            }
        }
        .navigationTitle("Appetizers")
        .disabled(isShowingDetail)
      }
      .onAppear {
        viewModel.appetizers = MockData.appetizers
        //viewModel.getAppetizers()
      }
      
      .blur(radius: isShowingDetail ? 20 : 0)
      
      if isShowingDetail {
        AppetizerDetailView(appetizer: selectedAppetizer!,
                            isShowingdetail: $isShowingDetail)
      }
      
      if viewModel.isLoading {
        LoadingView()
      }
    }
    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
      
    }
  }
}

#Preview {
  AppetizerListView()
}
