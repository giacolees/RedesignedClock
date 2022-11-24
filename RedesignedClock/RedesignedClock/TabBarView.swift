//
//  TabBarView.swift
//  RedesignedClock
//
//  Created by Giacomo Lisita on 22/11/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        NavigationStack{
            TabView() {
                ContentView().tabItem{
                    Label {
                        Text("Clock")
                    } icon:
                    {
                        Image(systemName: "clock")
                    }
                }
                
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
