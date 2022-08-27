//
//  ArrowDudeView.swift
//  arrowDude
//
//  Created by Conner Yoon on 8/27/22.
//

import SwiftUI

struct ArrowDude : Identifiable {
    var id = UUID()
    var name = "😃"
    var location = Location()
}

struct ArrowDudeView: View {
    @State var arrowDude = ArrowDude()
    var body: some View {
        Text(arrowDude.name)
    }
}

struct ArrowDudeView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowDudeView()
    }
}
