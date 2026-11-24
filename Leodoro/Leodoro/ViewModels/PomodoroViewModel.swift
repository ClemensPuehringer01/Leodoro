//
//  PomodoroViewModel.swift
//  Leodoro
//
//  Created by Pühringer Clemens on 24.11.26.
//

import Foundation
import SwiftUI

@Observable
class PomodoroViewModel {
    var pomodoroManager: PomodoroManager
    
    var progress: Double
    var progressColor: Color
    var isProgressVisisble: Bool
    
    init(pomodoroManager: PomodoroManager) {
        self.progress = 0
        self.progressColor = .pomodoroRed
        isProgressVisisble = true
        
        self.pomodoroManager = pomodoroManager
    }
}
