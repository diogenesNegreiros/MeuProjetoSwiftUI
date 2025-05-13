//
//  ContactView.swift
//  MeuProjetoSwiftUi
//
//  Created by Diogenes de Souza Negreiros on 12/05/25.
//

import SwiftUI

struct ContactView: View {
    let text: String
    let image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(Color.white)
            .padding()
            .overlay (HStack {
                Image(systemName: image)
                    .foregroundColor(Color.green)
                Text(text)
            })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContactView(text: "label info", image: "phone.fill")
        .padding() // margem do preview, não do componente
        .background(Color.gray.opacity(0.2)) // para visualizar o tamanho real
}
