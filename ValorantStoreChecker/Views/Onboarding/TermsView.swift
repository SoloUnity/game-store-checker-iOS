//
//  TermsView.swift
//  ValorantStoreChecker
//
//  Created by Gordon Ng on 2022-08-02.
//

import SwiftUI

struct TermsView: View {
    var body: some View {
        ScrollView{
            
            LazyVStack(alignment: .leading) {
                Text("Terms and Conditions")
                    .font(.title)
                    .padding(.bottom)
                
                
                Text("""
                    MIT License
                     
                    Copyright (c) 2022 Gordon Ng

                    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

                    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                    
                    """)
                
                Text("VSC (Valorant Store Tracker) is not associated, or connected, with Valorant and the company Riot Games. In addition, VSC is not connected, supported, or endorsed by Riot Games. Additionally, Riot Games and Valorant are trademarks registered under Riot Games Inc.")
                
            }
            .padding()
            
        }
        .background(Constants.bgGrey)
        
    }
}

struct TermsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsView()
    }
}