//
//  CardModel.swift
//  SwiftUI Course
//
//  Created by Daniel Vázquez on 26/02/20.
//  Copyright © 2020 Daniel Vázquez. All rights reserved.
//

import SwiftUI

// MAR: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
