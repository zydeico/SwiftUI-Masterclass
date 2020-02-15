//
//  ContentView.swift
//  SwiftUI Course
//
//  Created by Daniel Vázquez on 15/02/20.
//  Copyright © 2020 Daniel Vázquez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - CONTENT
    
    var body: some View {
        CardView()
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice("iPhone 8")
    }
}
