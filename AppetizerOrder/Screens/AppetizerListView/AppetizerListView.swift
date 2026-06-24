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
  
  
  var body: some View {
    ZStack {
      NavigationStack {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
            .onTapGesture {
              isShowingDetail = true
            }
        }
        .navigationTitle("Appetizers")
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      if isShowingDetail {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
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
