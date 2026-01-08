//
//  SquareSectionItem.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import SwiftUI

struct SquareSectionItem: View {
    let geo: GeometryProxy
    var contentItem: MixedContentValue?

    var body: some View {
        VStack(alignment: .leading) {
                // Cover Image
                AsyncImage(url: URL(string: contentItem?.avatarUrl ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                } placeholder: {
                    ProgressView()
                }
                .frame(width: geo.size.width * 0.35, height: geo.size.width * 0.35)
                
            Text(contentItem?.name ?? "")
                .lineLimit(1)
                .appFont(.body, weight: .semibold)
                .padding(.bottom, -4)
            DurationView(duration: contentItem?.durationText ?? "")
        }
        .frame(width: geo.size.width * 0.35, height: (geo.size.width * 0.35) + 100, alignment: .leading)
    }
}

#Preview {
    GeometryReader { geo in
        SquareSectionItem(geo: geo, contentItem: SectionsViewModel(httpClient: HTTPClient()).getSampleSection()?.content?[0])
            .preferredColorScheme(.dark)
    }
}
