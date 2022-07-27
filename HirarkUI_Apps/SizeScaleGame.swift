//
//  SizeScaleGame.swift
//  HirarkUI_Apps
//
//  Created by Andrea Antonia on 24/07/22.
//

import SwiftUI

struct SizeScaleGame: View {
    
    @State private var showTask = false
    
    var body: some View {
        
        VStack{
            
            //symbol archieve dan hint
            HStack{
                
                Button {
                    print("challenge")
                } label: {
                    Image(systemName: "arrowshape.turn.up.backward.fill")
                }
                .foregroundColor(Color("YellowHirarkui"))
                .font(.system(size: 60))
                
                Spacer()
                
                Text("Size & scale")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                    
                Spacer()
                
                Button {
                    print("hint")
                } label: {
                    Label("01", systemImage: "lightbulb")
                        .font(.system(size: 40, weight: .semibold))
                }
                .padding(.vertical,10)
                .padding(.horizontal, 20)
                .foregroundColor(Color("YellowHirarkui"))
                .background(Color("WhiteGray"))
                .cornerRadius(40)
                
            }
            Spacer()
            
            ZStack(alignment: .bottom){
                
                Image("templatePuzzle")
                
                //toggle button see task
                if showTask{
                    Rectangle()
                        .frame(width: 834, height: 386, alignment: .center)
                        .foregroundColor(.gray)
                   
                    VStack(alignment: .leading, spacing: 50){
                            Text("Arrange the components!")
                                .font(.system(size: 32, weight: .medium))
                                .foregroundColor(.white)
                        
                            Text("Arrange the design components to make user’s focus drawn first to reminder and then continue to list of works.")
                                .font(.system(size: 24, weight: .medium))
                                .foregroundColor(.white)
                            
                            Text("hint")
                                .font(.system(size: 22, weight: .medium))
                                .foregroundColor(.white)
                        }
                    }
                }
            
            //button see task
            Button("See task"){
                showTask.toggle()
            }
            .font(.system(size: 24, weight: .semibold))
            .foregroundColor(Color("Fontcolor"))
            
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("WhiteGray"))
                    .frame(height: 180)
                
                
                HStack( spacing: 60){
                    Image("Component1")
                    Image("Component2")
                    Image("Component3")
                }
            }
            
           
        }.ignoresSafeArea()
    }
}



struct SizeScaleGame_Previews: PreviewProvider {
    static var previews: some View {
        SizeScaleGame()
    }
}
