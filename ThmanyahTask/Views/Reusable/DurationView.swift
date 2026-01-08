//
//  DurationView.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import SwiftUI

struct DurationView: View {
    let duration: String
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                // duration
                Image(systemName: "play.fill")
                    .imageScale(.small)
                    .font(.caption2)
                Text(duration)
                    .appFont(.caption, weight: .medium)
            }
            .frame(height: 36)
            .padding(.horizontal, 12)
            .background(.blue.opacity(0.2).mix(with: .gray, by: 0.1))
            .clipShape(.capsule)
            .foregroundStyle(.white)
            Spacer()
        }
    }
}

#Preview {
    DurationView(duration: (SectionsViewModel(httpClient: HTTPClient()).getSampleSection()?.content?[0] as? ModelContentPodcast)?.durationText ?? "")
        .preferredColorScheme(.dark)
}
