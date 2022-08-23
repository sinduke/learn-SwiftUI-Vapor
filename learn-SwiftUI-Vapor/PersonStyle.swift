//
//  PersonStyle.swift
//  learn-SwiftUI-Vapor
//
//  Created by kh on 2022/8/22.
//

import SwiftUI

struct PersonStyle: ViewModifier {
    var 角半径: CGFloat
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 角半径, style: .continuous)
    //                .stroke(.black, style: .init(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [50, 20], dashPhase: 20))
                    .stroke(.linearGradient(colors: [.white.opacity(colorScheme == .dark ? 0.6 : 0.3), .black.opacity(colorScheme == .dark ? 0.3 : 0.1)], startPoint: .top, endPoint: .bottom))
                    .blendMode(.overlay)
            )
    }
}

extension View {
    func 画笔工具(角半径: CGFloat = 30) -> some View {
        modifier(PersonStyle(角半径: 角半径))
    }
}
