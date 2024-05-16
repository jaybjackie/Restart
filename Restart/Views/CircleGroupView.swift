//
//  CircleGroupView.swift
//  Restart
//
//  Created by Jay B on 17/5/2567 BE.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShapeColor: Color
    @State var ShapeOpaciry: Double
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpaciry), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpaciry), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

#Preview {
    CircleGroupView(ShapeColor: Color("ColorBlue"), ShapeOpaciry: 0.2)
}
