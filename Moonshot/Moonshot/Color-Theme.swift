//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Wojciech Konury on 07/01/2022.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green:  0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green:  0.2, blue: 0.3)
    }
}
