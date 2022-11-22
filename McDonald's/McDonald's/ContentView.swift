//
//  ContentView.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 16/11/22.
//

import SwiftUI
import SpriteKit

struct ColoredGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
            .fill(Color("giallino")))
    }
} //end groupboxstyle


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
                        .padding(.top,90)
                    
                    HStack {
                        Image(systemName: "star.fill")
                        
                            .foregroundColor(Color("Color_4"))
                        
                        Text("4.5 see all the reviews")
                            .font(.footnote)
                        
                        
                        Image(systemName: "drop.fill")
                        
                            .foregroundColor(Color("Color_3"))
                        
                        Text("446 Kcal")
                            .font(.footnote)
                    }//end Hstack
                    .padding(.top, 22)
                    
                    
                    
                    VStack(alignment:.leading) {
                        Text("A true institution.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top,30)
                          
                        Text("All the simplicity of chicken breast wrapped in crispy breadcrumbs, along with iceberg lettuce and the unmistakable McChicken sauce.")
                            .padding(.top,5)

                    }//end Vstack
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
            }//end toolbar
                
                
                
                
                GroupBox {
                    DisclosureGroup("Nutritional facts")
                    {
                            
                         Text("100 gr  Per serving  RDA%")
                            .fontWeight(.bold)
                    
                            
                        HStack{
                            Text("Carbohydrates")
                                .fontWeight(.bold)
                            Text("24.00  46.00  18%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Calories (Kcal)")
                                .fontWeight(.bold)
                            Text("230.00  446.00  22%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Calories (Kj)")
                                .fontWeight(.bold)
                            Text("963.00  1871.00  22%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                            
                        HStack{
                            Text("Saturated Fats")
                                .fontWeight(.bold)
                            Text("1.20  2.30  12%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Fats")
                                .fontWeight(.bold)
                            Text("10.30  19.00  27%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Fibers")
                                .fontWeight(.bold)
                            Text("1.30  2.50 ")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Proteins")
                                .fontWeight(.bold)
                            Text("11.00  21.00  42%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Salt")
                                .fontWeight(.bold)
                            Text("1.39  2.30  32%")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                    }//end disclosure group
                    
                    .foregroundColor(.black)
                    .padding(.leading, 170)
                    .fontWeight(.bold)
                    .font(.headline)
                    
                  }//end groupbox
                .groupBoxStyle(ColoredGroupBox())
                .padding(.top, 30)
                
                
                GroupBox {
                    DisclosureGroup("Allergens")
                    {
                        
                        HStack{
                            Text("Gluten")
                                .fontWeight(.bold)
                            Text("yes")
                                .fontWeight(.regular)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                            
                        HStack{
                            Text("Sesame")
                                .fontWeight(.bold)
                            Text("yes")
                                .fontWeight(.regular)
                                .foregroundColor(Color("grigio"))
                        }//end Hstack
                        
                        HStack{
                            Text("Eggs")
                                .fontWeight(.bold)
                            Text("yes")
                                .fontWeight(.regular)
                                .foregroundColor(Color("grigio"))
                            
                        }//end HStack
                        
                        
                        HStack{
                            Text("Mustard")
                                .fontWeight(.bold)
                            
                            Text("yes")
                                .fontWeight(.regular)
                                .foregroundColor(Color("grigio"))
                        }//end HStack
                        
                        HStack{
                            Text("Milk")
                                .fontWeight(.bold)
                            
                            Text("!")
                                .fontWeight(.regular)
                                .foregroundColor(Color("grigio"))
                        }//end HStack
                            
                        
                    }//end disclosure group
                    
                    .foregroundColor(.black)
                    .padding(.leading, 195)
                    .fontWeight(.bold)
                    .font(.headline)
                    
                    
                  }//end groupbox
                .groupBoxStyle(ColoredGroupBox())
                .padding(.top, 5)
                
                
            
            }
        }
        
    }
    }


    
    
struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Main Page", systemImage: "list.dash")
                }
            
            Color.blue
                .tabItem{
                Label("Favorites", systemImage: "star.fill")
                }
            
            Color.blue
                .tabItem {
                    Label("My account", systemImage: "person.fill")
                }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
