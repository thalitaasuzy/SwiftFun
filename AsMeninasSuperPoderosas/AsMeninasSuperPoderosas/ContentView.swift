//
//  ContentView.swift
//  AsMeninasSuperPoderosas
//
//  Created by User on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color.green
                .edgesIgnoringSafeArea(.all)
                
            VStack(spacing: 35) {
                Text("As Meninas Super Poderosas")
                    .font(.system(size:44))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .bold()
                HStack {
                    Image("lindinha")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                    
                    VStack {
                        ZStack{
                            Image("florzinha")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                        }
                        ZStack {
                            Image("docinho")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            Image("x")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            
                        }
                    }
                }
                
                
                Text("Escolha sua heroína...")
                    .font(.headline)
                    .foregroundColor(.white)
                    .bold()
                
                Button {
                    
                } label: {
                    Text("Avançar")
                        .font(.headline)
                        .foregroundColor(.green)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.white)
                        .cornerRadius(50)
                }
            }
        }
    }
    
}
