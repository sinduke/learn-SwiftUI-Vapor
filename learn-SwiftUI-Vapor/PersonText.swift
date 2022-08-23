//
//  PersonText.swift
//  learn-SwiftUI-Vapor
//
//  Created by kh on 2022/8/22.
//

import SwiftUI

extension Text {
    public enum 截断模式 {
        case 头
        case 尾
        case 中间
    }
}


extension View {
    @inlinable public func 截断模式(_ mode: Text.TruncationMode) -> some View {
        truncationMode(mode)
    }
}


