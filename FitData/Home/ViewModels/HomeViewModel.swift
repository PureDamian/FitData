//
//  HomeViewModel.swift
//  FitData
//
//  Created by Deven Amador on 8/2/24.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal: 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today Steps", subtitle: "Goal: 12,000", image: "figure.walk", tintColor: .yellow, amount: "9012"),
        Activity(id: 2, title: "Today Steps", subtitle: "Goal: 12,000", image: "figure.walk", tintColor: .red, amount: "4532"),
        Activity(id: 3, title: "Today Steps", subtitle: "Goal: 12,000", image: "figure.walk", tintColor: .blue, amount: "6894")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "38 mins", date: "Aug 10", calories: "783 cals"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tintColor: .cyan, duration: "45 mins", date: "Aug 20", calories: "783 cals"),
        Workout(id: 2, title: "Soccer", image: "figure.run", tintColor: .cyan, duration: "81 mins", date: "Aug 2", calories: "783 cals"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 8", calories: "783 cals")
    ]
}
