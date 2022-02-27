//
//  Order.swift
//  CupcakeCorner
//
//  Created by Wojciech Konury on 08/01/2022.
//

import SwiftUI

class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chockolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    @Published var specialRequestEnabled = false {
        didSet {
            if !specialRequestEnabled {
                extrafrosting = false
                extraSpringles = false
            }
        }
    }
    @Published var extrafrosting = false
    @Published var extraSpringles = false
    
    @Published var name = ""
    @Published var streed = ""
    @Published var city = ""
    @Published var zip = ""
}
