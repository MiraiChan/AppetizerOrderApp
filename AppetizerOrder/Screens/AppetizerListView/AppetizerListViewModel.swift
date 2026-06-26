//
//  AppetizerListViewModel.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 23.06.26.
//
import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
  
  @Published var appetizers: [Appetizer] = []
  @Published var alertItem: AlertItem?
  @Published var isLoading = false
  @Published var isShowingDetail = false
  @Published var selectedAppetizer: Appetizer?
  
  func getAppetizers() {
    isLoading = true
    
    Task {
      do {
        //appetizers = try await NetworkManager.shared.getAppetizers()
        try await Task.sleep(nanoseconds: 800_000_000)
        appetizers = MockData.appetizers
        
        isLoading = false
      } catch {
        if let apError = error as? APError {
          switch apError {
          case .invalidURL:
            alertItem = AlertContext.invalidURL
          case .invalidResponse:
            alertItem = AlertContext.invalidResponse
          case .invalidData:
            alertItem = AlertContext.invalidData
          case .unableToComplete:
            alertItem = AlertContext.unableToComplete
          }
        } else {
          alertItem = AlertContext.invalidResponse
        }
        isLoading = false
      }
    }
  }
}
