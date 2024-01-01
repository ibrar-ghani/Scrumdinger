//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by user on 22/12/2023.
//
import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
  
    var body: some View {
        NavigationView {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}
struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}

