//
//  ListSectionViewModifier.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import SwiftUI

struct ListSectionViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .padding(.vertical, 8)
    }
}

