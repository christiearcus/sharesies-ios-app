//
//  ContentView.swift
//  sharesies-ios-app
//
//  Created by Sophie Taylor on 26/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AppWrapper()
        }
    }
}

struct AppWrapper: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                SearchScreen()
            } else {
                LaunchScreen()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

struct LaunchScreen: View {
    var body: some View {
        HStack() {
            VStack(alignment: .center) {
                Image("pineapple")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
