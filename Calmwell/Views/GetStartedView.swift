//
//  GetStartedView.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/29/22.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                Image("zenGardenAbstract")
                    .resizable()
                    .frame(width: 500, height: 450)
                    .offset(x: -20, y: -275)
                    .opacity(0.8)
                
                VStack {
                    Text("").padding(.top, 200)
                    Text("C A L M W E L L")
                        .bold()
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.bottom, 7)
                    Text("Lorem ipsum dolor set omnus impedus Lorem ipsum dolor set omnus impedus Lorem ipsum dolor set omnus impedus")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .opacity(0.3)
                        .padding(.bottom, 40)
                    
                    NavigationLink  {
                        CalmwellDashboardView()
                    } label: {
                        HStack (alignment: .center) {
                            Text("Get Started")
                                .bold()
                                .foregroundColor(.white)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                        }
                    }

                }
                .padding(.horizontal, 100)
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}
