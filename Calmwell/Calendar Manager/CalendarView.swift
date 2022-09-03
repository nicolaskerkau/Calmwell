//
//  CalendarView.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/30/22.
//

import SwiftUI

struct CalendarView: View {
    
    @EnvironmentObject var model:CalendarManagementModel
    @State var monthOrDay = 0
    var columns = [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5),
                   GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5),
                   GridItem(.flexible(), spacing: 5)]
    
    
    private var weekDays = ["M", "T", "W", "Th", "F", "S", "Su"]
    
    var body: some View {
        VStack {
            Text("Calendar")
                .bold()
                .font(.title)
            
            Picker("", selection: $monthOrDay) {
                Text("Month").tag(0)
                Text("Day").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 160)
            
            ScrollView {
                if monthOrDay == 1 {
                    Text("\(model.year.id)")
                    Text("\(model.year.monthsOfTheYear[0].nameOfTheMonth)")
                }
                else if monthOrDay == 0 {
                    
                    ForEach(0..<model.year.monthsOfTheYear.count) { month in
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                            VStack {
                                
                                Text(model.year.monthsOfTheYear[month].nameOfTheMonth)
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .opacity(0.5)
                                    .padding(.top, 20)
                               
                                LazyVGrid(columns: columns) {
                                    
                                    ForEach(0..<((model.year.monthsOfTheYear[month].numberOfDays + weekDays.count + model.year.monthsOfTheYear[month].firstDay - 1))) { day in
                                        
                                        ZStack {
                                            if day < 7 {
                                                Text(weekDays[day])
                                                    .font(.caption)
                                                    .opacity(0.5)
                                            }
                                            
                                            if day > 6 && day < (6 + model.year.monthsOfTheYear[month].firstDay) {
                                                Rectangle()
                                                    .frame(width: 25, height: 30)
                                                    .opacity(0)
                                            }
                                            
                                            if day > (5 + model.year.monthsOfTheYear[month].firstDay) {
                                                Rectangle()
                                                    .frame(width: 25, height: 30)
                                                    .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                                    .cornerRadius(2)
                                                    .shadow(radius: 0.5)
                                                
                                                Text("\(day - (5 + model.year.monthsOfTheYear[month].firstDay))")
                                                    .font(.caption2)
                                            }
                                        }
                                    }
                                    
                                   
                                }.padding(.horizontal, 10)
                            }
                            .padding(.bottom, 20)
                        }.padding(.horizontal, 20).padding(.top, 40)
                    }
                }
            }
            
            Button  {
                
            } label: {
                Rectangle()
                    .frame(height: 50, width: 50)
            }

        }
        .navigationBarHidden(true)
    }
}
