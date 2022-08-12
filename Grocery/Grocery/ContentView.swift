//
//  ContentView.swift
//  Grocery
//
//  Created by NOUNI on 8/12/22.
//

import SwiftUI

extension Color {
    static let lightGreen = Color(red: 204 / 255, green: 217 / 255, blue: 156 / 255)
    static let darkGreen = Color(red: 4 / 255, green: 191 / 255, blue: 104 / 255)
    static let Nnavy = Color(red: 68 / 255, green: 93 / 255, blue: 124 / 255)
    static let lightBlue = Color(red: 213 / 255, green: 229 / 255, blue: 242 / 255)
    static let Notwhite = Color(red: 246 / 255, green: 255 / 255, blue: 245 / 255)
    static let redred = Color(red: 217 / 255, green: 74 / 255, blue: 100 / 255)

    
}


struct ContentView: View {
    @State var groceryItems = [ "Banana" , "Sour patch kids" , "Nutella" , "Mini pretzels" ,"Avocado" , "Coca cola" , "Coco pops" , "Frozen pizza" , "Ice cream" , "Melon" ]
     
     @State var NewItems = ""
     
     var body: some View {
         
         ZStack{
         
             Color.darkGreen
                 .ignoresSafeArea()
         
         VStack{
             
             
             Text("MY GROCERY")
                 .font(Font.custom("GraphikArabic-Bold", size: 40))
                 .foregroundColor(.Nnavy)
                 .padding()
         
    //GraphikArabic-Bold
             //GraphikArabic-Regular
             
             HStack{
             
             
                          
             TextField("add items here", text: $NewItems)
                 .font(Font.custom("GraphikArabic-Regular", size: 15))
                 .padding()
                 .frame(width: 290, height: 47)
                 .background(Color.Notwhite)
                 .cornerRadius(10)
                 
                 Button(action: {groceryItems.append(NewItems)}) {
                     
                     
                     Text("Add")
                         .font(Font.custom("GraphikArabic-Regular", size: 15))
                         .foregroundColor(.Nnavy)
                         .padding()
                         .background(Color.lightGreen)
                         .cornerRadius(10)
                     
                     
                    
                         
                     
                     
                     
                     
                 }.hoverEffect(.lift)

                                  
                          
                          
                          
                          
             }.padding(.bottom,30)
                      
                      

         
             
                 
                     
            
         
         

             List  {
                         ForEach(groceryItems, id: \.self) {
                         i in
                                 
                                 
                             
                             
                         
                         
                         
                         HStack{
                             
                             Image(i)
                                 .resizable()
                                 .scaledToFit()
                                 .frame(width: 100, height: 100)
                             
                             
                             
                             Text(i)
                                 .foregroundColor(.Nnavy)
                                 .font(Font.custom("GraphikArabic-Regular", size: 17))
                         }
                             
                         }.onDelete(perform: delete)
                             .listRowBackground(Color.lightBlue.opacity(0.5))

         }
             
             

             
     }
             
         }
         
     }
         func delete(at offsets: IndexSet) {
                     groceryItems.remove(atOffsets: offsets)
                 }
     }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }


