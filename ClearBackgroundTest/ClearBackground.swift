//
//  File.swift
//  ClearBackgroundTest
//
//  Created by chihyung park on 2024/02/25.
//
import SwiftUI

struct ClearBackground: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
