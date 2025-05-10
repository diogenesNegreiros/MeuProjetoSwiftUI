//
//  ContentView.swift
//  MeuProjetoSwiftUi
//
//  Created by Diogenes de Souza Negreiros on 09/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("perfil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 4)
                    }
                Text("Diógenes Negreiros")
                    .font(Font.custom("Tagesschrift-Regular", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Dev IOS e Android")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 50)
                    .foregroundColor(Color.white)
                    .padding()
                    .overlay (HStack {
                        Image(systemName: "phone.fill.badge.checkmark")
                            .foregroundColor(Color.green)
                        Text("+55 (21) 994047961")
                    })
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
