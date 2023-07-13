//
//  RadioView.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 11.07.2023.
//

import SwiftUI

struct RadioView: View {
    private var radioList = RadioStation.preview()
    
    let rows = [
        GridItem(.flexible())
    ]
    
    let columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows) {
                        ForEach(radioList.indices, content: {radio in
                            VStack (alignment: .leading) {
                                Text(radioList[radio].descriptionTitle)
                                    .font(.system(size: 20))
                                    .foregroundColor(.gray)
                                
                                Text(radioList[radio].title).font(.system(size: 24))
                                Text(radioList[radio].subTitle)
                                    .font(.system(size: 22))
                                    .foregroundColor(.gray)
                                
                                Image(radioList[radio].coverImage)
                                    .resizable()
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                            }
                            .offset(x: -15)
                            .padding()
                            .overlay(alignment: .top, content: {
                                Rectangle()
                                    .fill(.gray.opacity(0.3))
                                    .frame(height: 1)
                            })
                            .overlay(alignment: .bottom, content: {
                                Rectangle()
                                    .fill(.gray.opacity(0.3))
                                    .frame(height: 1)
                            })
                            .navigationTitle("Радио")
                            .navigationBarBackButtonHidden(true)
                            .frame(width: (UIScreen.screenWidth)-30, height: 350)
                        })
                        
                    }
                }
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns) {
                        
                        Section {
                            ForEach(radioList.indices, content: {radio in
                                HStack {
                                    Image(radioList[radio].coverImage)
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                    VStack(alignment: .leading) {
                                        Text(radioList[radio].title)
                                            .font(.system(size: 20))
                                        
                                        Text(radioList[radio].subTitle)
                                            .font(.system(size: 16))
                                            .foregroundColor(.gray)
                                    }
                                    
                                    .frame(width: (UIScreen.screenWidth)-190, height: 20)
                                }
                                
                                .overlay(alignment: .bottom, content: {
                                    Rectangle()
                                        .fill(.gray.opacity(0.3))
                                        .frame(height: 1)
                                    
                                })
                                
                                .frame(width: (UIScreen.screenWidth), height: 120)
                                .offset(x: -25)
                            })
                        } header: {
                            Text("Станции")
                                .font(.system(size: 26).bold())
                            
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                }
                
            }.offset(x: 15)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
