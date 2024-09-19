//
//  User.swift
//  Appetizer
//
//  Created by Arbaaz on 16/09/24.
//

import Foundation


struct  User: Codable {
    var firstName        = ""
    var lastName         = ""
    var email            = ""
    var birthdate        = Date()
    var extraNapkins     = false
    var frequentRefills  = false
}
