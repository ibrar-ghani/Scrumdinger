//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by user on 22/12/2023.
//

import SwiftUI


@main
struct ScrumdingerApp: App {
  
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
