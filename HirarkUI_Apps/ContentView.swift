//
//  ContentView.swift
//  HirarkUI_Apps
//
//  Created by Andrea Antonia on 23/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingDetailView = false
    
    var body: some View {
        
        ZStack{
            Image("bgimage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                
            
            VStack{
                Spacer()
                
                Image ("logoapps")
                
                Spacer()
                
                Button {
                    self.isShowingDetailView.toggle()
                } label: {
                    Text("Play")
                }
                .font(Font.custom("RampartOne-Regular", size: 40, relativeTo: .body))                .padding()
                .padding(.horizontal, 148)
                .foregroundColor(.black)
                .background(RoundedRectangle(cornerRadius: 40).fill(Color("YellowHirarkui")))
                .fullScreenCover(isPresented: $isShowingDetailView) {
                    ChallengePage()
                        .transition(AnyTransition.move(edge: .leading))
                }
               
  
                //button play (punya hada)
//                NavigationLink(destination: ChallengePage().navigationBarHidden(true), isActive: $isShowingDetailView) { EmptyView() }
//                                Button("Play") {
//                                    self.isShowingDetailView = true
//                                }.background(
//                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
//                                        .fill())
                
                    
                //collection button
                Button {
                    print("hai") // navigasi ke page collection hrsnya
                } label: {
                    Text("Collection")
                }
                .font(Font.custom("RampartOne-Regular", size: 40, relativeTo: .body))                .padding()
                .padding(.horizontal, 148)
                .foregroundColor(Color("Fontcolor"))
                                
                Spacer()
                
                }
        }

        .ignoresSafeArea()
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
