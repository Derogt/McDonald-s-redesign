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
   @State private var StellaToccata: Bool = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                            //                    Rectangle()
                            //                        .frame(minWidth:.infinity, minHeight:10)

                    Paninoview()
                        .padding(.top,-100)

                    Group {
                        ZStack {
                            HStack {
                                Image(systemName: "star.fill")
                                
                            
                                
                                    .foregroundColor(Color("Color_4"))
                                
                                Text("4.5 see all the reviews")
                                    .font(.system(size: 15)) 
                                
                                Image(systemName: "drop.fill")
                                
                                    .foregroundColor(Color("Color_3"))
                                
                                Text("446 Kcal")
                                    .font(.system(size: 15))
                            }//end Hstack
                            .padding(.top,-150)
                            .padding(.horizontal,35)
                        }//end Zstack
                        
                        
                        Text("A true institution.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top,-90)
                        
                        Text("All the simplicity of chicken breast wrapped in crispy breadcrumbs, along with iceberg lettuce and the unmistakable McChicken sauce.")
                            .padding(.top,-40)
                    }
                    .padding(.horizontal,20)
                        

                        GroupBox {
                            DisclosureGroup("Nutritional facts")
                            {
                                Divider()
                                    .background(Rectangle().fill(.white).frame(height: 2))
                                VStack{
                                    Grid {
                                        GridRow {
                                            Text("")
                                                .font(.headline)
                                            
                                            Text("100 gr")
                                            Text("Per serving")
                                            Text("RDA%")
                                            // fine prima riga
                                        }//gridrow end
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Calories")
                                                .font(.headline)
                                            
                                            Text("230.00")
                                                .foregroundColor(.gray)
                                            Text("446.00")
                                                .foregroundColor(.gray)
                                            Text("22%")
                                                .foregroundColor(.gray)
                                            
                                            // fine seconda riga
                                        }//gridrow end
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Fats")
                                                .font(.headline)
                                            
                                            Text("10.30")
                                                .foregroundColor(.gray)
                                            Text("19.00")
                                                .foregroundColor(.gray)
                                            Text("27%")
                                                .foregroundColor(.gray)
                                            // fine terza riga
                                        }//gridrow end
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Fibers")
                                                .font(.headline)
                                            
                                            Text("1.30")
                                                .foregroundColor(.gray)
                                            Text("2.50")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine quarta riga
                                        }//gridrow end
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Salt")
                                                .font(.headline)
                                            
                                            Text("1.39")
                                                .foregroundColor(.gray)
                                            Text("2.30")
                                                .foregroundColor(.gray)
                                            Text("32%")
                                                .foregroundColor(.gray)
                                            // fine quinta riga
                                        }//gridrow end
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        
                                    }//end grid
                                }//end Vstack
                                
                            }//end disclosure group
                            
                            .foregroundColor(.black)
                            .padding(.horizontal,30)
                            .fontWeight(.bold)
                            .font(.headline)
                            
                        }//end groupbox
                        .groupBoxStyle(ColoredGroupBox())
                        .padding(.top, 30)
                        
                        
                        GroupBox {
                            DisclosureGroup("Allergens")
                            {
                                Divider()
                                    .background(Rectangle().fill(.white).frame(height: 2))
                                VStack {
                                    
                                    Grid {
                                        GridRow {
                                            Text("Gluten")
                                                .font(.headline)
                                            
                                            Text("")
                                            Text("Yes")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine prima riga
                                        }
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Sesame")
                                                .font(.headline)
                                            
                                            Text("")
                                            Text("Yes")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine seconda riga
                                            
                                        }//end gridrow
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Eggs")
                                                .font(.headline)
                                            
                                            Text("")
                                            Text("Yes")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine terza riga
                                            
                                        }//end gridrow
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Mustard")
                                                .font(.headline)
                                            
                                            Text("")
                                            Text("Yes")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine quarta riga
                                            
                                        }//end gridrow
                                        
                                        Divider()
                                            .background(Rectangle().fill(.white).frame(height: 2))
                                        
                                        GridRow {
                                            Text("Milk")
                                                .font(.headline)
                                            
                                            Text("")
                                            Text("!")
                                                .foregroundColor(.gray)
                                            Text("")
                                            // fine quinta riga
                                            
                                        }//end gridrow
                                        
                                    }//end grid
                                }//end Vstack
                            }//end disclosure group
                            
                            .foregroundColor(.black)
                            .padding(.horizontal,30)
                            .fontWeight(.bold)
                            .font(.headline)
                            
                            
                        }//end groupbox
                        
                        .groupBoxStyle(ColoredGroupBox())
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                        
                    }//end big vstack
                   
                .background(Color("Color2"))
                .navigationBarTitle("McChicken®",displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.backward")
                            .font(.title)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button{
                            StellaToccata.toggle()
                            
                        }label: {
                            Image(systemName: StellaToccata ? "star.fill" : "star")
                           
                        }
                        
                    }
                }//end toolbar
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
