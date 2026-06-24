//
//  Appetizer.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 21.06.26.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
  let id: Int
  let name: String
  let description: String
  let price: Double
  let imageURL: String
  let calories: Int
  let protein: Int
  let carbs: Int
}

struct AppetizerResponse: Decodable {
  let request: [Appetizer]
}

struct MockData {
  static let sampleAppetizer = Appetizer(id: 0001,
                                         name: "Appetizer Name",
                                         description: "Tender grilled flank steak marinated in a savory Asian-inspired sauce with garlic, soy, ginger, and a touch of sweetness. Juicy, flavorful, and perfect for a protein-packed meal.",
                                         price: 9.99,
                                         imageURL: "asian-flank-steak",
                                         calories: 420,
                                         protein: 36,
                                         carbs: 12)
  static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
