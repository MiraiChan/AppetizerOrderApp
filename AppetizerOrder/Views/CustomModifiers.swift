//
//  CustomModifiers.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 25.06.26.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .buttonStyle(.bordered)
      .tint(.brandPrimary)
      .controlSize(.large)
  }
}
//alternatively:
extension View {
  func standardButtonStyle() -> some View {
    self.modifier(StandardButtonStyle())
  }
}
