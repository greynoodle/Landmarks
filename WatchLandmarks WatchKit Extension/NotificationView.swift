//
//  NotificationView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by T j on 7/20/22.
//

import SwiftUI

struct NotificationView: View {
    var landmark: Landmark?
    var title: String?
    var message: String?
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImage(image: (landmark?.image.resizable())!)
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()
                .previewDevice("Apple Watch Series 7 - 45mm")
                .previewDisplayName("Apple Watch Series 7 - 45mm")
            NotificationView(landmark: ModelData().landmarks[0], title: "Turtle Rock", message: "You are within 5 miles of Turtle rock.")
                .previewDevice("Apple Watch Series 6 - 40mm")
                .previewDisplayName("Apple Watch Series 6 - 40mm")
        }
    }
}
