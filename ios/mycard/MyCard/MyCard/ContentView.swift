//
//  ContentView.swift
//  MyCard
//
//  Created by Tomisin Jenrola on 2020-08-02.
//  Copyright © 2020 No Name. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)//, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            Text("Jak Daxter")
                .font(.title)
            .bold()
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
