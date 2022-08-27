//
//  BoardView.swift
//  arrowDude
//
//  Created by Conner Yoon on 8/27/22.
//

import SwiftUI
let RowMax = 5
let ColMax = 4
struct Location : Equatable {
    var xCor : Int = 0
    var yCor : Int = 0
}

struct BoardView: View {
    

    @State var dudes : [ArrowDude] = []
    @State var dude = ArrowDude()
    
    var body: some View {
        VStack{
            ForEach(0...RowMax-1, id: \.self){ row in
                HStack{
                    ForEach(0...ColMax-1, id: \.self){ col in
                        ZStack{
                            TileView()
                            if dude.location == Location(xCor: col, yCor: row){
                                ArrowDudeView()
                                
                            }
                        }
                    }
                }
            }
            ControlView(dude: $dude).padding()
        }.padding()
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
