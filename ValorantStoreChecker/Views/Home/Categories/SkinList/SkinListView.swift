//
//  SkinListView.swift
//  ValorantStoreChecker
//
//  Created by Gordon Ng on 2022-07-18.
//

import SwiftUI

struct SkinListView: View {
    
    @EnvironmentObject var model:SkinModel
    @State var searchText:String = ""

    
    var body: some View {
        
        GeometryReader{ geo in
            VStack{
                
                SearchBar(text: $searchText)
                
                ScrollViewReader{ (proxy: ScrollViewProxy) in
                    ScrollView {
                        
                        if model.data.isEmpty{
                            ProgressView()
                        }
                        else{
                            

                            LazyVStack(spacing: 13){
                                ForEach(model.data.filter({ searchText.isEmpty ? true : $0.displayName.lowercased().contains(searchText.lowercased()) })){ skin in
                                    
                                    SkinCardView(skin: skin, showPrice: true, showPriceTier: true)
                                        .frame(height: (UIScreen.main.bounds.height / 6.5))
                                    
                                
                                }
                                
                            }
                            .padding(10)
                            .id("top") // Id to identify the top for scrolling
                            .tag("top") // Tag to identify the top for scrolling
                        }
                        
                        Button {
                            // Scroll to top
                            withAnimation { proxy.scrollTo("top", anchor: .top) }
                        } label: {
                            
                            ZStack{
                                CircleView(colour: Constants.cardGrey)
                                    .shadow(color:.white, radius: 2)
                                
                                Image(systemName: "arrow.up")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(15)
                                    .foregroundColor(.white)
                                    
                            }
                            .frame(width: 60, height: 60)
                            
                            
                        }
                        
                    }
                }
                

            }
            .padding(10)
            
        }
    }
}

struct SkinListView_Previews: PreviewProvider {
    static var previews: some View {
        SkinListView()
    }
}

