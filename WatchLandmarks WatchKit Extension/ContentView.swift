//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by T j on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
