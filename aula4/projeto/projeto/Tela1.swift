//
//  Tela1.swift
//  projeto
//
//  Created by Student on 12/04/23.
//

import SwiftUI

struct Tela1: View {
    var musica: Musica
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [Color.red,Color.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView{
                
                VStack{
                    
                    Image("\(musica.imagem)")
                        .resizable()
                        .padding(.top)
                        .scaledToFit()
                        .frame(width: 250,height: 250)
                    Text("\(musica.nome)")
                        .foregroundColor(Color.white)
                        .font(.title)
                    Text("\(musica.compositor)")
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                    
                    
                    Spacer()
                    
                }.padding(.top, 100.0)
                
                HStack{
                    Image(systemName: "shuffle")
                        
                        .resizable()
                        .colorInvert()
                        .frame(width: 25,height: 25)
                        .padding(.trailing, 30.0)
                    Image(systemName: "backward.end.fill")
                        
                        .resizable()
                        .colorInvert()
                        .frame(width: 30,height: 30)
                        .padding(.trailing, 50.0)
                    Image(systemName: "play.fill")
                        .resizable()
                        .colorInvert()
                        .frame(width: 40,height: 40)
                    
                    Image(systemName: "forward.end.fill")
                        
                        .resizable()
                        .colorInvert()
                        .frame(width: 30,height: 30)
                        .padding(.leading, 50.0)
                    
                    Image(systemName: "repeat")
                        
                        .resizable()
                        .colorInvert()
                        .frame(width: 25,height: 25)
                        .padding(.leading, 30.0)

                }.padding(.top, 100.0)
            }
        }
    }
}

struct Tela1_Previews: PreviewProvider {
    static var previews: some View {
        var teste = Musica(nome: "Teste", compositor: "Teste", imagem: "img1")
        Tela1(musica: teste)
    }
}
