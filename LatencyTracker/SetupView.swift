//
//  SetupView.swift
//  LatencyTracker
//
//  Created by Paulo  Henrique on 29/02/24.
//

import SwiftUI
import LaunchAtLogin

struct SetupView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        List {
            LaunchAtLogin.Toggle("Launch at login")
                .toggleStyle(SwitchToggleStyle(tint: .green))
            Divider().listRowSeparator(.hidden)

            Text("Quit")
                .font(.subheadline)
                .listRowSeparator(.hidden)
                .padding(5)
                .keyboardShortcut("q")
                .onTapGesture {
                    appState.quitApp()
                }
        }
        .navigationTitle("Settings")
        .listStyle(PlainListStyle())
        .frame(width: 145, height: 105)
        .cornerRadius(15)
        .padding(5)
        .onAppear {
            appState.measurePing()
        }
    }
}
