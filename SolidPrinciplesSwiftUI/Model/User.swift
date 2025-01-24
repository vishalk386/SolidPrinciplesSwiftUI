//
//  User.swift
//  SolidPrinciplesSwiftUI
//
//  Created by Vishal Kamble on 24/01/25.
//

import Foundation

struct User: Codable,Identifiable{
    let id: Int
    let name: String
    let email: String
    let phone: String
    let website: String
    let company: Company
    let address: Address
}
struct Address: Codable{
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}
struct Geo: Codable{
    let lat: String
    let lng: String
}
struct Company: Codable{
    let name: String
    let catchPhrase: String
    let bs: String
    
}

