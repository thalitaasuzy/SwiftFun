//
//  ContentView.swift
//  TaskList
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TaskScreen()
                .tabItem{
                    Image(systemName: "Tasks")
                    Text("Task's List")
                }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
    }
}



