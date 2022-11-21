//
//  ContentView.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 16/11/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    
//                    Rectangle()
//                        .frame(minWidth:.infinity, minHeight:10)
                    
                    Rectangle()
                        .frame(width: 500, height: 150)
                        .foregroundColor(Color("Color"))
                    
                    HStack {
                        Image(systemName: "star.fill")
                        
                            .foregroundColor(Color("Color_4"))
                        
                        Text("4.5 see all the reviews")
                            .font(.footnote)
                        
                        
                        Image(systemName: "drop.fill")
                        
                            .foregroundColor(Color("Color_3"))
                        
                        Text("446 Kcal")
                            .font(.footnote)
                    }
                    
                    
                    
                    VStack(alignment:.leading) {
                        Text("A true institution.")
                            .font(.title)
                            .fontWeight(.bold)
                          
                        Text("All the simplicity of chicken breast wrapped in crispy breadcrumbs, along with iceberg lettuce and the unmistakable McChicken sauce.")

                    }
                    .padding(.horizontal, 85)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                .background(Color("Color2"))
                .navigationBarTitle("McChicken®",displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.backward")
                            .font(.title)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "star")
                    }
            }
            
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
