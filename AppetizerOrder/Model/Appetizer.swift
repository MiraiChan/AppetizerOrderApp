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
  
  static let appetizers: [Appetizer] = [
    Appetizer(id: 2, name: "Spring Rolls", description: "Crispy veggie rolls", price: 6.99, imageURL: "", calories: 120, protein: 4, carbs: 18),
    Appetizer(id: 3, name: "Chicken Wings", description: "Spicy wings", price: 12.99, imageURL: "", calories: 350, protein: 25, carbs: 5),
    Appetizer(id: 4, name: "Nachos", description: "Cheesy nachos", price: 8.49, imageURL: "", calories: 420, protein: 10, carbs: 45)
  ]
  
  static let orderItemOne     = Appetizer(id: 0001,
                                          name: "Test Appetizer One",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)
  
  static let orderItemTwo     = Appetizer(id: 0002,
                                          name: "Test Appetizer Two",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)
  
  static let orderItemThree   = Appetizer(id: 0003,
                                          name: "Test Appetizer Three",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)
  
  static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
