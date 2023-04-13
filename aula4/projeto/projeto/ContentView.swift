//
//  ContentView.swift
//  projeto
//
//  Created by Student on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var musica = [
        Musica(nome: "Stan", compositor: "Lofi Music, Chill Fruits Music", imagem: "img2"),
        Musica(nome: "7 years", compositor: "Lofi Music, Chill Fruits Music", imagem: "img3"),
        Musica(nome: "I'm Yours", compositor: "Lofi Music, Chill Fruits Music", imagem: "img4"),
        Musica(nome: "Another Love", compositor: "Lofi Music, Chill Fruits Music", imagem: "img5"),
        Musica(nome: "Riptide", compositor: "Lofi Music, Chill Fruits Music", imagem: "img6"),
        Musica(nome: "Do I Wanna Know", compositor: "Lofi Music, Chill Fruits Music", imagem: "img7"),
        Musica(nome: "Better Together", compositor: "Lofi Music, Chill Fruits Music", imagem: "img8")
               
    ]
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                LinearGradient(colors: [Color.red,Color.black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        
                        Image("img1")
                            .resizable()
                            .padding(.top)
                            .scaledToFit()
                            .frame(width: 250,height: 250)
                        Text("Lofi Fruits Music")
                            .font(.title)
                    
                            .foregroundColor(.white)
                            .bold()
                        ForEach(musica) { musica in
                            NavigationLink(destination: Tela1(musica: musica)){
                                HStack{
                                    Image("\(musica.imagem)")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60,height: 60)
                                        .padding(.leading)
                                    
                                    VStack(alignment: .leading){
                                        Text("\(musica.nome)")
                                            .fontWeight(.bold)
                                            .padding(.leading)
                                            .foregroundColor(Color.white)
                                        
                                        
                                        Text("\(musica.compositor)")
                                            .padding(.leading)
                                            .foregroundColor(Color.white)
                                    }
                                    
                                    
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .padding()
                                        .foregroundColor(Color.white)
                                    
                                }
                            }
                        }
                        
                        
                        VStack(alignment: .leading){
                            Text("Mais que talvez você goste")
                                .font(.title3)
                                
                                
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .padding(.trailing, 110.0)
                            
                            ScrollView(.horizontal){
                                HStack{
                                ForEach(musica) { musica in
                                    NavigationLink(destination: Tela1(musica: musica)){
                                        
                                        VStack{
                                            
                                            
                                            Image("\(musica.imagem)")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100,height: 100)
                                                .padding(.leading)
                                            
                                            Text("\(musica.nome)")
                                                .font(.caption2)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.white)
                                                
                                            
                                        }
                                    }

                                        
                                        
                                    }
                                }
                                }
                        }
                        
                    }
                    Spacer()
                    
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
