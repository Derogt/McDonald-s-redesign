//
//  PullDown_Button.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 21/11/22.
//

import SwiftUI

struct PullDown: View {
    //MARK: - PROPERTIES
    
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    
    var body: some View{
        GroupBox(){
            DisclosureGroup("Nutritional Facts") {
                ForEach(0..<nutrients.count, id: \.self){ index in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }//: GROUP
                        .foregroundColor(.gray)
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text("1g")
                            .multilineTextAlignment(.trailing)
                    }//: HSTACK
                }//: LOOP
            }//: DISCLOSURE
        }//: BOX
    }
}

//MARK: - PREVIEW

struct PullDown_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
