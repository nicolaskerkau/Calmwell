//
//  CalendarView.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/30/22.
//

import SwiftUI

struct CalendarView: View {
    
    @State var monthOrDay = 0
    var columns = [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5),
                   GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5),
                   GridItem(.flexible(), spacing: 5)]
    
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
                    Text("Day View")
                }
                else if monthOrDay == 0 {
                    // August
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("A U G U S T")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<31) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // September
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("S E P T E M B E R")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<30) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // October
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("O C T O B E R")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<31) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // November
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("N O V E M B E R")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<30) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // December
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("D E C E M B E R")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<31) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // January
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("J A N U A R Y")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<31) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                    
                    // February
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 1, y: 1)
                        VStack {
                            
                            Text("F E B R U A R Y")
                                .font(.title3)
                                .fontWeight(.light)
                                .opacity(0.5)
                                .padding(.top, 20)
                           
                            LazyVGrid(columns: columns) {
                                
                                ForEach(0..<28) { index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(Color(.sRGB, red: 0.98, green: 0.98, blue: 0.98, opacity: 1))
                                            .cornerRadius(2)
                                            .shadow(radius: 0.5)
                                        
                                        Text("\(index + 1)")
                                            .font(.caption2)
                                    }
                                }
                                
                               
                            }.padding(.horizontal, 10)
                        }
                        .padding(.bottom, 20)
                    }.padding(.horizontal, 20).padding(.top, 40)
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
