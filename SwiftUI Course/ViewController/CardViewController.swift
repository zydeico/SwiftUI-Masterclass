//
//  Cards.swift
//  SwiftUI Course
//
//  Created by Daniel Vázquez on 15/02/20.
//  Copyright © 2020 Daniel Vázquez. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    var card: Card
    
    // Mark: - Card
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                .italic()
            }
                
            // Texto en el top de la tarjeta
            .offset(y: -218)
            
            // Adding button
            Button(action: {
                print("Button was tapped.")
                playSound(sound: "sound-chime", type: "mp3")
            }) {
                
                // Adding to HSTack
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
