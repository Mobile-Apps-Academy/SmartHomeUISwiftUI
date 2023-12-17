//
//  ContentView.swift
//  Smart Home UI
//
//  Created by Javid Shaikh on 16/12/23.
//

/// Hi All, Welcome to Mobile Apps Academy
/// In this tutorial, We'll develop a smart home ui using SwiftUI
/// Which includes
/// 1. Animated Background
/// 2. Device Menu
/// 3. Circular Slider Control

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            AnimatedBackground()
            
            VStack {
                Title()
                DeviceMenuView(devices: devices) { value in
                    
                }
                .frame(height: 80)
                
                Spacer()
                TempretureControlSliderView()
                Spacer()

                DeviceName()
                
                Button(action: {
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.yellow)
                        .overlay {
                            Text("SET TEMPRETURE")
                                .font(.headline)
                                .foregroundStyle(.black)
                                .bold()
                        }
                })
                .frame(height: 60)
                .padding(.horizontal, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.vertical, 50)
           
            
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func Title() -> some View {
        VStack {
            VStack(alignment: .leading, content: {
                HStack {
                    Text("BEDROOM")
                        .font(.system(size: 28))
                        .foregroundStyle(.white)
                        .bold()
                    
                    Spacer()
                }
                .padding(.bottom, 10)
                
                HStack {
                    Text("TOTAL 4 ACTIVE DEVICES")
                        .font(.system(size: 10))
                        .foregroundStyle(.yellow)
                        .bold()
                    
                    Spacer()
                }
                
            })
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
    
    @ViewBuilder
    func DeviceName() -> some View {
        // UI is similar to title
        VStack(alignment: .leading){
            HStack {
                Text("Samsung AC")
                    .font(.system(size: 28))
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
            }
            
            HStack {
                Text("Connected")
                    .font(.system(size: 15))
                    .foregroundStyle(.yellow)
                    .bold()
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
    
}

#Preview {
    ContentView()
}
