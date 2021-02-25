//
//  Kadai008View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/20.
//

import SwiftUI

struct Kadai008View: View {
    @State private var selection = 0
    @State private var numSlider: Float = 0

    var body: some View {
        VStack {
            TabView(selection: $selection) {
                SliderView(color: Color.red, numSlider: $numSlider)
                    .tabItem {
                        Text("左タブ")
                    }
                    .tag(0)
                SliderView(color: Color.green, numSlider: $numSlider)
                    .tabItem {
                        Text("右タブ")
                    }
                    .tag(1)
            }
        }
    }
}

struct SliderView: View {
    private static let sliderRange: ClosedRange<Float> = 0...1

    var color: Color
    @Binding var numSlider: Float

    var body: some View {
        ZStack {
            color
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Text(String(numSlider))
                }.padding()

                Slider(value: $numSlider, in: Self.sliderRange)

                Spacer()
            }
        }
    }
}

struct Kadai008View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai008View()
    }
}
