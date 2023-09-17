//
//  ColorView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 16.7.2023.
//

import SwiftUI

struct ColorView: View {
    
    
    let colors: [ColorsList] = Bundle.main.decode("Colors.json")
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(colors) { color in
                    VStack(spacing: 10) {
                        Text(color.englishName)
                            .font(.title)
                        
                        Text(color.name)
                            .font(.title2)
                        
                        Image(color.color)
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 500)
                    }
                }
            }
            .frame(height: 600)
            .padding()
            
            Spacer()
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
