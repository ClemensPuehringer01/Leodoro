//
//  AchievementView.swift
//  Leodoro
//
//  Created by Sarah Steininger on 01.09.25.
//

import SwiftUI

struct AchievementList: View {
    var body: some View {
        GeometryReader{geometry in
            NavigationView{
                
                ZStack {
                    List(achievements) { achievment in
                        NavigationLink {
                            AchievementDetail(achievement: achievment)
                        } label: {
                            AchievementRow(achievement: achievment, screenWidth: geometry.size.width)
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                    
                }.scrollContentBackground(.hidden).background(LinearGradient(gradient: .init(colors:
                                                                                                [Color(.pomodoroGreen), Color(.white)]),
                                                                             startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
            }
        }
    }
}

#Preview {
    AchievementList()
}
