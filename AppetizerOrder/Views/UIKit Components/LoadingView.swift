//
//  LoadingView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 23.06.26.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
  func makeUIView(context: Context) -> UIActivityIndicatorView {
    let activityIndicatorView = UIActivityIndicatorView(style: .large)
    activityIndicatorView.color = UIColor.myBrandPrimary
    activityIndicatorView.startAnimating()
    return activityIndicatorView
  }
  
  func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground)
        .ignoresSafeArea()
      
      ActivityIndicator()
    }
  }
}

#Preview {
  LoadingView()
}
