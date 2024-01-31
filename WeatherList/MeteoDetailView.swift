//
//  MeteoDetailView.swift
//  WeatherList
//
//  Created by  Ixart on 30/01/2024.
//

import SwiftUI

struct MeteoDetailView: View {
    let meteo: Meteo
    
    var body: some View {
        VStack {
            Image(systemName: meteo.symbolName)
                .foregroundColor(.blue)
                .imageScale(.large)
                .padding()
            Text("\(meteo.temps) \(meteo.ville)")
            Text("temperature") // ecrire ici pour que toutes les vue(pays) et la même 
        } // FIN VSTACK
        .navigationBarTitle("\(meteo.temps)")
    }// FIN BODY
}// STRUCT

  
        

#Preview {
    MeteoDetailView(meteo: Meteo(id: UUID(), symbolName: "sun.horizon", temps: "Sun", ville: "Paris"))
}
