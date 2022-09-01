//
//  ContentView.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/20/22.
//

import SwiftUI

struct CalmwellDashboardView: View {
    
    var model = QuoteModel()
    @State var menuIsShown = false
    @State var overlayButtons = true
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    
                    //MARK: Title Information, Greeting
                        VStack (alignment: .center) {
                            Text("C A L M W E L L")
                                .bold()
                                .font(.system(size: 26))
                               
                        }
                        .offset(y: -80)
                    
                    //MARK: Motivational Quotes
                        VStack (alignment: .center) {
                            Text(model.getRandomAffirmation())
                                .font(.body)
                                .padding()
                                .opacity(0.7)
                        }
                        .padding(.horizontal, 30)
                        .multilineTextAlignment(.center)
                        .offset(y: -50)
                    
                    //MARK: ScrollView with Buttons
                    ScrollView {
                        LazyVStack {
                            
                            //MARK: Calendar Manager Button
                            NavigationLink  {
                                CalendarView()
                            } label: {
                                ZStack {
                                    RectangleCard(color: .white, width: geo.size.width - 40, height: geo.size.height - 500)
                                    
                                    VStack (alignment: .leading) {
                                        HStack (alignment: .top) {
                                            Text("C A L E N D A R")
                                                .foregroundColor(.black)
                                                .font(.title2)
                                                .fontWeight(.light)
                                                .padding(.horizontal, 40)
                                            Spacer()
                                            Image(systemName: "calendar")
                                                .foregroundColor(.black)
                                                .font(.system(size: 22))
                                                .padding(.horizontal, 40)
                                        }
                                        
                                    
                                            Text("Monday, June 7")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .padding(.leading, 40)
                                        
                                        HStack (alignment: .bottom) {
                                            Text("5")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                                .padding(.top, 3)
                                            Text("events remaining today.")
                                                .font(.caption)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                        }.padding(.horizontal, 40)
                                        
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 310, height: 20)
                                                .foregroundColor(.cyan)
                                                .cornerRadius(50)
                                                .opacity(0.3)
                                            
                                            Rectangle()
                                                .frame(width: 250, height: 20)
                                                .foregroundColor(.cyan)
                                                .cornerRadius(50)
                                                .offset(x: -30)
                                        }.padding(.leading, 40)
                                        
                                        //end
                                    }
                                }

                            }
                            .padding(.top, 10)
                            
                            //MARK: Task Manager Button
                            NavigationLink  {
                                TaskManagerView()
                            } label: {
                                ZStack {
                                    RectangleCard(color: .white, width: geo.size.width - 40, height: geo.size.height - 500)
                                    
                                    VStack (alignment: .leading) {
                                        HStack (alignment: .top) {
                                            Text("T A S K S")
                                                .foregroundColor(.black)
                                                .font(.title2)
                                                .fontWeight(.light)
                                                .padding(.horizontal, 40)
                                            Spacer()
                                            Image(systemName: "checkmark.circle")
                                                .foregroundColor(.black)
                                                .font(.system(size: 22))
                                                .padding(.horizontal, 40)
                                        }
                                        
                                   
                                            Text("9:15 am")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .padding(.leading, 40)
                                       
                                        HStack (alignment: .bottom) {
                                            Text("9")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                                .padding(.top, 3)
                                            Text("tasks remaining today.")
                                                .font(.caption)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                        }.padding(.horizontal, 40)
                                        
                                        HStack {
                                            Image(systemName: "arrowtriangle.forward.fill")
                                                .font(.system(size: 20))
                                                .foregroundColor(.red)
                                                .padding(.leading, 40)
                                            ZStack {
                                                Rectangle()
                                                    .frame(width: 250, height: 20)
                                                    .foregroundColor(.cyan)
                                                    .cornerRadius(50)
                                                    .opacity(0.3)
                                                    .padding(.leading, 10)
                                                Text("Meet with Linda | 10:30am")
                                                    .font(.caption)
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                    .offset(x: -20)
                                            }
                                        }
                                        
                                       //end
                                    }
                                }
                            }
                            .padding(.top, 10)
                            
                            //MARK: Reminders Manager Button
                            NavigationLink  {
                                ReminderManagerView()
                            } label: {
                                ZStack {
                                    RectangleCard(color: .white, width: geo.size.width - 40, height: geo.size.height - 500)
                                    
                                    VStack (alignment: .leading) {
                                        HStack (alignment: .top) {
                                            Text("R E M I N D E R S")
                                                .foregroundColor(.black)
                                                .font(.title2)
                                                .fontWeight(.light)
                                                .padding(.horizontal, 40)
                                            Spacer()
                                            Image(systemName: "clock")
                                                .foregroundColor(.black)
                                                .font(.system(size: 22))
                                                .padding(.horizontal, 40)
                                        }
                                        
                                   
                                            Text("9:15 am")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .padding(.leading, 40)
                                       
                                        HStack (alignment: .bottom) {
                                            Text("3")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                                .padding(.top, 3)
                                            Text("reminders coming up.")
                                                .font(.caption)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                        }.padding(.horizontal, 40)
                                        
                                        HStack {
                                            Text("")
                                        }
                                        
                                       //end
                                    }
                                }
                            }
                            .padding(.top, 10)
                            
                            //MARK: Notes Manager Button
                            NavigationLink  {
                                NotesManagerView()
                            } label: {
                                ZStack {
                                    RectangleCard(color: .white, width: geo.size.width - 40, height: geo.size.height - 500)
                                    
                                    VStack (alignment: .leading) {
                                        HStack (alignment: .top) {
                                            Text("N O T E S")
                                                .foregroundColor(.black)
                                                .font(.title2)
                                                .fontWeight(.light)
                                                .padding(.horizontal, 40)
                                            Spacer()
                                            Image(systemName: "folder")
                                                .foregroundColor(.black)
                                                .font(.system(size: 22))
                                                .padding(.horizontal, 40)
                                        }
                                        
                                   
                                            Text("2022")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .padding(.leading, 40)
                                       
                                        HStack (alignment: .bottom) {
                                            Text("3")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                                .padding(.top, 3)
                                            Text("folders")
                                                .font(.caption)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                            Text("19")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                                .padding(.top, 3)
                                            Text("notes")
                                                .font(.caption)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                        }.padding(.horizontal, 40)
                                        
                                        HStack {
                                            Text("")
                                        }
                                        
                                       //end
                                    }
                                }
                            }
                            .padding(.top, 10)
                        }
                    }
                }
                
            }
        }
        .navigationBarHidden(true)
        .overlay(alignment: .top) {
            HStack {
                Button  {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
                .padding([.top, .horizontal], 20)
                Spacer()
                Button  {
                    menuIsShown = true
                } label: {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 26))
                        .foregroundColor(.black)
                }
                .padding([.top, .horizontal], 20)
                .sheet(isPresented: $menuIsShown) {
                    ZStack {
                        Rectangle()
                            .opacity(0)
                        MenuView()
                    }
                    .background(BackgroundBlurView())
                }
            }.opacity(overlayButtons ? 1 : 0)
        }
    }
}
