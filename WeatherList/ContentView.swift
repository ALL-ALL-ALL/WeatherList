//
//  ContentView.swift
//  WeatherList
//
//  Created by  Ixart on 26/01/2024.
//

import SwiftUI

struct Meteo : Identifiable {
    
    var id = UUID()
    var symbolName: String
    var temps: String
    var ville: String
    
} // FIN STRUCT



struct ContentView: View {
    
    let meteoArray: [Meteo] = [
        
        Meteo(id: UUID(), symbolName: "sun.horizon", temps: "Sun", ville: "Paris"),
        Meteo(id: UUID(), symbolName: "cloud.fill", temps: "Clouds", ville: "New York"),
        Meteo(id: UUID(), symbolName:"tropicalstorm.circle", temps: "Storm", ville:"Tokyo"),
        Meteo(id: UUID(), symbolName: "moon.fill", temps: "Moon", ville: "Jakarta"),
        Meteo(id: UUID(), symbolName: "snowflake", temps: "Snow", ville: "Medellin"),
        Meteo(id: UUID(), symbolName: "tornado", temps: "Tornado", ville: "Porto")

            
        ] // FIN TABLEAU
    
    
    
    var body: some View {
        NavigationView{
            List(meteoArray) { Meteo in
                
                  HStack {
                                  Image(systemName: Meteo.symbolName)
                                      .foregroundColor(.red)
                                      .imageScale(.large)
                                      .padding()
                                  Text("\(Meteo.temps) \(Meteo.ville)")
                      
                      
                      
                      
                      
                              }  // FIN HSTACK
                  
                  
                  
                  
                  
                  
                  
                  
                  
                          } // FIN LIST
            .navigationBarTitle("Weather") // Titre de la barre de navigation


                  
             

              } // FIN NAVIGATION VIEW
        } // FIN BODY
  
    
        
        
        
        
        
        
    } // FIN STRUC
    
    
    
    

#Preview {
    ContentView()
}
