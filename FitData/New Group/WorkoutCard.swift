//
//  WorkoutCard.swift
//  FitData
//
//  Created by Deven Amador on 8/2/24.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
}
struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    
                    Text(workout.duration)

                }
                
                HStack {
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 10", calories: "783 cals"))
}
