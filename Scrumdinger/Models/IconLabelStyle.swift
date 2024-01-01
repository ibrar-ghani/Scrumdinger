//
//  IconLabelStyle.swift
//  Scrumdinger
//
//  Created by user on 22/12/2023.
//
import SwiftUI


struct IconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == IconLabelStyle {
    static var trailingIcon: Self { Self() }
}
