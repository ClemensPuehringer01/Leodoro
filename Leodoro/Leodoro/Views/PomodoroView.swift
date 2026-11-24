//
//  PomodoroView.swift
//  Leodoro
//
//  Created by Pühringer Clemens on 24.11.26.
//

import SwiftUI

struct PomodoroView: View {
    @State var viewModel = PomodoroViewModel(pomodoroManager: PomodoroManager())
    var body: some View {
        VStack{
            Text("Dings")
                .font(.title)
                .padding([.leading, .trailing], 20)
                .padding(.top, 30)
            Spacer()
            ZStack{
                CircularProgressView(
                    progress: viewModel.progress,
                    color: viewModel.progressColor
                        .opacity(viewModel.isProgressVisisble ? 1 : 0)
                )
                Image("Pomodoro")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }.padding(60)
            Spacer()
            
            Text("Dings2")
                .font(.largeTitle)
                .bold()
        }.background(viewModel.progressColor)
            .opacity(0.5)
            .task {
                // TODO start timer
            }
            .onDisappear(){
                // TODO stop timer
            }
            
    }
}

#Preview {
    PomodoroView()
}
