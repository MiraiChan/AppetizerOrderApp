//
//  AppetizerListViewModel.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 23.06.26.
//
import SwiftUI

final class AppetizerListViewModel: ObservableObject {
  @Published var appetizers: [Appetizer] = []
  
  func getAppetizers() {
    NetworkManager.shared.getAppetizers { result in
      DispatchQueue.main.async {
        switch result {
        case .success(let appetizers):
          self.appetizers = appetizers
        case .failure(let error):
          print(error.localizedDescription)
        }
      }
    }
  }
  
}
