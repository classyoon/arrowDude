//
//  ControlView.swift
//  arrowDude
//
//  Created by Conner Yoon on 8/27/22.
//

import SwiftUI

struct ControlView: View {
    @Binding var dude: ArrowDude
    var controlSize : CGFloat = 200
    @State var text = "nothing"
    var body: some View {
        
        VStack{
            
            HStack{
                Spacer()
                Button {
                    if dude.location.yCor > 0{
                    dude.location.yCor -= 1
                    }
                } label: {
                    Text("Up")
                }
                
                Spacer()
            }
            HStack{
                Button {
                    if dude.location.xCor > 0{
                        dude.location.xCor -= 1
                    }
                } label: {
                    Text("Left")
                }
                Spacer()
                Button {
                    if dude.location.xCor < ColMax-1{
                    dude.location.xCor += 1
                    }
                } label: {
                    Text("Right")
                }
            }
            HStack{
                Spacer()
                Button {
                    if dude.location.yCor < RowMax-1{
                    dude.location.yCor += 1
                    }
                } label: {
                    Text("Down")
                }
                Spacer()
            }
        }.buttonStyle(.borderedProminent)
            .padding(.horizontal)
            .frame(width: controlSize, height: controlSize)
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView(dude: .constant(ArrowDude()))
    }
}
