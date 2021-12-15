//
//  ContentView.swift
//  Fructuse
//
//  Created by DJ on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsdata

    //MARK: - BODY
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName:  "slider.horizontal.3")
                } //:BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                })
            }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsdata)
            .previewDevice("IPhone SE (2nd generation")
    }
}
