//
//  AppetizerTabView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 21.06.26.
//

import SwiftUI

struct AppetizerTabView: View {
  var body: some View {
    TabView {
      AppetizerListView()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }
      AccountView()
        .tabItem {
          Image(systemName: "person")
          Text("Account")
        }
      OrderView()
        .tabItem {
          Image(systemName: "bag")
          Text("Order")
        }
    }
    .accentColor(.myBrandPrimary)
  }
}

#Preview {
  AppetizerTabView()
}
