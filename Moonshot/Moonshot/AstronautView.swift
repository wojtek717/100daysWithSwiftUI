//
//  AstronautView.swift
//  Moonshot
//
//  Created by Wojciech Konury on 07/01/2022.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            Image(astronaut.id)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: 50)
                .overlay(
                    Circle()
                        .strokeBorder(.white, lineWidth:  1)
                )
            
            Text(astronaut.description)
                .padding()
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts["armstrong"]!)
            .preferredColorScheme(.dark)
    }
}
