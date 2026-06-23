//
//  AppetizerListView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 21.06.26.
//

import SwiftUI

struct AppetizerListView: View {
  @StateObject var viewModel = AppetizerListViewModel()
  
  var body: some View {
    NavigationStack {
      List(viewModel.appetizers) { appetizer in
        AppetizerListCell(appetizer: appetizer)
      }
      .navigationTitle("Appetizers")
    }
    .onAppear {
      viewModel.getAppetizers()
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
