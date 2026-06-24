//
//  User.swift
//  AppetizerOrder
//
//  Created by Almira Khafizova on 25.06.26.
//

import Foundation

struct User: Codable {
  var firstName       = ""
  var lastName        = ""
  var email           = ""
  var birthdate       = Date()
  var extraNapkins    = false
  var frequentRefills = false
}
