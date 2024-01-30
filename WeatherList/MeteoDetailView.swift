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
                .foregroundColor(.red)
                .imageScale(.large)
                .padding()
            Text("\(meteo.temps) \(meteo.ville)")
        } // FIN VSTACK
        .navigationBarTitle("Detail")
    }// FIN BODY
}// STRUCT

  
        

#Preview {
    MeteoDetailView(meteo: Meteo(id: UUID(), symbolName: "sun.horizon", temps: "Sun", ville: "Paris"))
}
