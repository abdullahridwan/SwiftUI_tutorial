//
//  CircleImage.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            //.overlay(Circle().stroke(Color.black, lineWidth: 0.5))
            .shadow(color: Color.blue.opacity(0.4),
                    radius: 20, x: 0, y: 5)
            .shadow(color: Color.gray.opacity(0.4),
                    radius: 10, x: 0, y: 2)
        
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
