//
//  ContentView.swift
//  EcoBuild app for animals
//
//  Created by Jacqueline Stringham on 3/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    var body: some View {
        NavigationView{
        VStack{
            
            Image("Eco").resizable().aspectRatio(contentMode:.fit).frame(width: 75.0, height: 75.0)
            Text("EcoBuild").foregroundColor(.purple).bold()
            
            Text("Welcome to EcoBuild! EcoBuild is an app spreading awareness to endangered and threatened species to rebuild our ecosystems. We create a safe space for nature lovers to document sightings of endangered species and see where they could find more.")
                .multilineTextAlignment(.center)
                .lineLimit(8)
                .padding().font(.custom("small", size: 18)).fixedSize(horizontal: false, vertical: true)            .position(.init(x: 185, y: 65))
            Link("See official sightings here!", destination: URL(string: "https://www.mass.gov/info-details/rare-species-viewer" )!).position(x:200 , y: 55.0)
            NavigationLink {
                SwiftUIView()
            } label: {
                Text("Lets Go!").foregroundColor(.purple)
            }.position(x: 165, y: 65)
            
            Text("Please share your experience with us!").position(.init(x:155,y:14)).font(.custom("small", size: 16))
           
            Image("EcoBLogo").resizable().aspectRatio(contentMode:.fit).frame(width: 575.0, height: 275.0).position(.init(x:170,y:30));
           
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
   
}








