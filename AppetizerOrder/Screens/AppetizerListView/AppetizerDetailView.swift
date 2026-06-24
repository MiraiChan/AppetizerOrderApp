//
//  AppetizerDetailView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 24.06.26.
//

import SwiftUI

struct AppetizerDetailView: View {
  let appetizer: Appetizer
  
  var body: some View {
    VStack {
      Image("asian-flank-steak")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 300, height: 225)
      
      VStack {
        Text(appetizer.name)
          .font(.title2)
          .fontWeight(.semibold)
        
        Text(appetizer.description)
          .multilineTextAlignment(.center)
          .font(.body)
          .padding()
        
        HStack(spacing: 40) {
          VStack(spacing: 5) {
            Text("calories")
              .bold()
              .font(.caption)
            
            Text("\(appetizer.calories)")
              .foregroundStyle(.secondary)
              .italic()
          }
          
          VStack(spacing: 5) {
            Text("calories")
              .bold()
              .font(.caption)
            
            Text("\(appetizer.carbs)")
              .foregroundStyle(.secondary)
              .italic()
          }
          
          VStack(spacing: 5) {
            Text("calories")
              .bold()
              .font(.caption)
            
            Text("\(appetizer.protein)")
              .foregroundStyle(.secondary)
              .italic()
          }
        }
      }
      
      Spacer()
      
      Button {
        print("tapped")
      } label: {
        Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
          .font(.title3)
          .fontWeight(.semibold)
          .frame(width: 260, height: 50)
          .foregroundStyle(.white)
          .background(Color.brandPrimary)
          .cornerRadius(10)
      }
      .padding(.bottom, 30)
    }
    
    .frame(width: 300, height: 525)
    .background(Color(.systemBackground))
    .cornerRadius(12)
    .shadow(radius: 40)
    .overlay(Button {
      
    } label: {
      ZStack {
        Circle()
          .frame(width: 30, height: 30)
          .foregroundStyle(.white)
          .opacity(0.6)
        
        Image(systemName: "xmark")
          .imageScale(.small)
          .frame(width: 44, height: 44)
          .foregroundStyle(.black)
      }
    }, alignment: .topTrailing)
  }
}

#Preview {
  AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
