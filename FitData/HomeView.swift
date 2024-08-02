//
//  HomeView.swift
//  FitData
//
//  Created by Deven Amador on 7/24/24.
//

import SwiftUI

struct HomeView: View {
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
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        Spacer()
                        
                        
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                
                                
                                Text("123 calories")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                
                                
                                Text("52  minutes")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand Time")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                
                                
                                Text("8 hours")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, color: .red, goal: 600)
                            ProgressCircleView(progress: $active, color: .green, goal: 60)
                                .padding(.all, 20)
                            ProgressCircleView(progress: $stand, color: .blue, goal: 12)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivities, id: \.id) { activity in
                        ActivityCard(activity: activity)
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                        WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
