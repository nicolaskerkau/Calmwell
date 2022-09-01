//
//  MenuView.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/30/22.
//

import SwiftUI

struct MenuView: View {
    
    @State var calendarNotifications = true
    @State var taskNotifications = true
    @State var reminderNotifications = true
    @State var discoveryNotifications = true
    
    var body: some View {
        LazyVStack {
            ZStack {
                
                Rectangle()
                    .opacity(0)
                    .frame(width: 400, height: 900)
                
                VStack {
                    Text("S E T T I N G S")
                        .bold()
                        .font(.system(size: 40))
                        .padding(.bottom, 10)
                    Text("You are signed in as:")
                        .font(.caption)
                        .opacity(0.2)
                    Text("nicolas.a.kerkau@gmail.com")
                        .font(.caption)
                        .tint(.black)
                        .opacity(0.2)
                        .padding(.bottom, 20)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .opacity(0.3)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        VStack (alignment: .leading) {
                          Text("Notifications")
                                .bold()
                                .font(.system(size: 16))
                                .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                .padding(.leading, 10)
                            
                            Toggle(isOn: $calendarNotifications) {
                                Text("Calendar:")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                            }
                            .padding(.horizontal, 10)
                            
                            Toggle(isOn: $taskNotifications) {
                                Text("Tasks:")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                            }
                            .padding(.horizontal, 10)
                            
                            Toggle(isOn: $reminderNotifications) {
                                Text("Reminders:")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                            }
                            .padding(.horizontal, 10)
                            
                            Toggle(isOn: $discoveryNotifications) {
                                Text("Discovery Feed:")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                            }
                            .padding(.horizontal, 10)
                            
                            Text("Help and Contact")
                                .bold()
                                .font(.system(size: 16))
                                .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                .padding(.leading, 10).padding(.bottom, 5)
                            
                            //MARK: Support Button
                            Button {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "mail")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Text("Contact Support")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                }.padding(.horizontal, 10).padding(.bottom, 5)
                            }
                            //MARK: FAQ Button
                            Button {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "filemenu.and.selection")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Text("FAQ")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                }.padding(.horizontal, 10).padding(.bottom, 5)
                            }
                            //MARK: Rate Us Button
                            Button {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "star")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Text("Rate Us")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color(.sRGB, red: 0.3, green: 0.3, blue: 0.3, opacity: 1))
                                }.padding(.horizontal, 10).padding(.bottom, 5)
                            }
                        }
                    }.frame(width: 300, height: 400)
                    
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 30)
                                .foregroundColor(.cyan)
                                .opacity(0.7)
                                .cornerRadius(10)
                            
                            HStack {
                                Image(systemName: "lock.open")
                                    .foregroundColor(.white)
                                Text("Logout")
                                    .bold()
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                        }
                    }.padding(.top, 40)
                }
            }
        }
    }
}
