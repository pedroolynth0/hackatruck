 //
//  ContentView.swift
//  Desafio1
//
//  Created by Student on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State var imc:Double = 0
    @State var Texto: String = ""
    @State var Cor: Color = Color(.white)
    
    
    func escolherCor(){
        if( imc < 18.5){
            Cor = Color("Baixo peso")
            Texto = "Baixo peso"
        }
        else if (imc >= 18.5 && imc <= 24.99){
            Cor = Color("Normal")
            Texto = "Normal"
        }
        else if (imc >= 25 && imc <= 29.99){
            Cor = Color("Sobrepeso")
            Texto = "Sobrepeso"
        }
        else if (imc >= 30 ){
            Cor = Color("Obesidade")
            Texto = "Obesidade"
        }
    }
    
    
    var body: some View {
        
        VStack {
            VStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                
                
                TextField("Digite seu peso", value: $peso,format: .number)
                        
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(.black)
                
                        .multilineTextAlignment(.center)
                        .frame(width: 200)
                        .padding(.all)
                    
                    
                TextField("Digite sua altura",value: $altura,format: .number)
                    
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
            
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
                    .padding(.all)

                
                Button("Calcular"){
                        imc = peso/(altura*altura)
                        escolherCor()
                }
                .font(.title2)
                .padding(.all)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            Spacer()
            Text("\(Texto)")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
            
            Image("img")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea(.all)
                
        }
        
        .background(Cor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
