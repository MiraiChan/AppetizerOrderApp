//
//  AppetizerListView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 21.06.26.
//

import SwiftUI

struct AppetizerListView: View {
  var body: some View {
    NavigationStack {
      List(MockData.appetizers, id: \.id) { appetizer in
       AppetizerListCell(appetizer: appetizer)
      }
      .navigationTitle("Appetizers")
    }
  }
}

#Preview {
  AppetizerListView()
}
