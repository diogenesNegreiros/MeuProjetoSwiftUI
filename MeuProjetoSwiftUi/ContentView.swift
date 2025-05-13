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
                ContactView(text:"+55 (21) 999999999",  image:"phone.fill.badge.checkmark")
                ContactView(text:"dio@test@gmail.com",  image:"envelope.fill")
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}


