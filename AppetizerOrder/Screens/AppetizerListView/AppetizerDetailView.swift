//
//  AppetizerDetailView.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 24.06.26.
//

import SwiftUI

struct AppetizerDetailView: View {
  @EnvironmentObject var order: Order
  
  let appetizer: Appetizer
  @Binding var isShowingdetail: Bool
  
  var body: some View {
    VStack {
      Image("asian-flank-steak")
      //AppetizerRemoteImage(urlString: appetizer.imageURL)
        .resizable() //delete when using remote
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
          
          NutritionInfo(title: "Calories", value: appetizer.calories)
          NutritionInfo(title: "Carbs", value: appetizer.carbs)
          NutritionInfo(title: "Protein", value: appetizer.protein)
          
        }
      }
      
      Spacer()
      
      Button {
        order.add(appetizer)
      } label: {
        APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
      }
      .padding(.bottom, 30)
    }
    
    .frame(width: 300, height: 525)
    .background(Color(.systemBackground))
    .cornerRadius(12)
    .shadow(radius: 40)
    .overlay(Button {
      isShowingdetail = false
    } label: {
      XDismissButton()
    }, alignment: .topTrailing)
  }
}

struct NutritionInfo: View {
  
  let title: String
  let value: Int
  
  var body: some View {
    VStack(spacing: 5) {
      Text(title)
        .bold()
        .font(.caption)
      
      Text("\(value)")
        .foregroundStyle(.secondary)
        .italic()
    }
  }
}

#Preview {
  AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingdetail: .constant(true))
}
