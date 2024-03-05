//
//  LatencyTracker.swift
//  LatencyTracker
//
//  Created by Paulo  Henrique on 29/02/24.
//

import SwiftUI
import Network

@main
struct TopBarApp: App {
    @StateObject private var appState = AppState();

    var body: some Scene {
        MenuBarExtra(appState.connectionStatus) {
            SetupView().environmentObject(appState)
        }.menuBarExtraStyle(.window)
    }
}

class AppState: ObservableObject {
    @Published var connectionStatus: String;


    init() {
        self.connectionStatus = "Loading..."
        self.startTimer()
    }
    
  
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.measurePing()
        }
    }
    
    func measurePing() {
        let url = URL(string: "https://google.com")!
        let startTime = CFAbsoluteTimeGetCurrent()

        let task = URLSession.shared.dataTask(with: url) { [weak self] (_, response, error) in
            guard let self = self, error == nil, (response as? HTTPURLResponse)?.statusCode == 200 else {
                return
            }

            let endTime = CFAbsoluteTimeGetCurrent()
            let pingTime = (endTime - startTime) * 100

            DispatchQueue.main.async {
                self.connectionStatus = String(format: "%.1f ms", pingTime)
            }
        }

        task.resume()
    }
    
    func quitApp() {
         exit(0)
     }
}
