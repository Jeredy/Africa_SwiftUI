//
//  InsetFactView.swift
//  Africa
//
//  Created by André Almeida on 2022-07-10.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    var animal: Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { animal in
                    Text(animal)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:BOX
        
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
