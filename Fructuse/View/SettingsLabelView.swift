//
//  SettingsLabelView.swift
//  Fructuse
//
//  Created by DJ on 5/24/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //:MARK - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName:  labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructuse", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
