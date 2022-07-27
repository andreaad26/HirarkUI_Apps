//
//  ChallengePage.swift
//  HirarkUI_Apps
//
//  Created by Andrea Antonia on 23/07/22.
//

import SwiftUI

struct ChallengePage: View {
    
//    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        
//        Color.white
//                    .transition(.move(edge: .leading))
//                    .onTapGesture {
//                        isShowingDetailView = false
//                    }
//                    .edgesIgnoringSafeArea(.all)
        
        ZStack{
            Image("bgimage")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack{
                
                //symbol archieve dan hint
                HStack{
                    
                    Button {
                        print("challenge")
                    } label: {
                        Image(systemName: "archivebox.fill")
                    }
                    .foregroundColor(Color("YellowHirarkui"))
                    .font(.system(size: 60))
                    
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
                    .frame(height: 30)
                
                //kotak level
                HStack{

                    ZStack{
                      RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("Size & scale")
                            .font(.system(size: 40))
                            .frame(width: 200, height: 220)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Fontcolor"))
                    
                            
                        }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("01")
                            .font(.system(size: 96))
                            .foregroundColor(Color("Fontcolor"))
                        
                        //overlay lock
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .overlay(Image (systemName: "lock.fill"))
                            .font(.system(size: 128))
                            .foregroundColor(.white)
                        
                        }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("02")
                            .font(.system(size: 96))
                            .foregroundColor(Color("Fontcolor"))
                        
                        //overlay lock
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .overlay(Image (systemName: "lock.fill"))
                            .font(.system(size: 128))
                            .foregroundColor(.white)
                        
                        }
                    
                    }
                
                Spacer()
                    .frame(height: 30)
                
                //horizontal kotak level kedua
                HStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("Color & contrast")
                            .font(.system(size: 40))
                            .frame(width: 200, height: 220)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Fontcolor"))
                        
                        //overlay lock
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .overlay(Image (systemName: "lock.fill"))
                            .font(.system(size: 128))
                            .foregroundColor(.white)
                        
                        }
                     
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("03")
                            .font(.system(size: 96))
                            .foregroundColor(Color("Fontcolor"))
                        
                        //overlay lock
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .overlay(Image (systemName: "lock.fill"))
                            .font(.system(size: 128))
                            .foregroundColor(.white)
                        
                        }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 245, height: 245)
                            .foregroundColor(.white)
                        
                        Text("More coming soon")
                            .font(Font.custom("RampartOne-Regular", size: 40, relativeTo: .body))
                            .padding()
                            .frame(width: 200, height: 220)
                            .multilineTextAlignment(.center) .foregroundColor(Color("Fontcolor"))
                        }
                    
                    }
                Spacer()
            }
        }.ignoresSafeArea()
        
    }
}

struct ChallengePage_Previews: PreviewProvider {
    static var previews: some View {
        ChallengePage()
    }
}
