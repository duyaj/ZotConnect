//
//  FilterFeedView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/19/23.
//

import SwiftUI

struct FilterFeedView: View {
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    @State var tintColor1: Color?
    @State var tintColor2: Color?
    @State var tintColor3: Color?
    
    var body: some View {
        List {
                HStack {
                    Button {
                        if tintColor1 == .purple {
                            tintColor1 = nil
                        } else {
                            tintColor1 = .purple
                        }
                        
                    } label: {
                        Label("New", systemImage: "seal.fill")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.purple)
                    .tint(tintColor1)
                    
                    Button {
                        if tintColor2 == .red {
                            tintColor2 = nil
                        } else {
                            tintColor2 = .red
                        }
                        
                    } label: {
                        Label("Hot", systemImage: "flame.fill")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.red)
                    .tint(tintColor2)
                    
                    Button {
                        if tintColor3 == .blue {
                            tintColor3 = nil
                        } else {
                            tintColor3 = .blue
                        }
                        
                    } label: {
                        Label("Top", systemImage: "arrow.up.circle.fill")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.blue)
                    .tint(tintColor3)
                    
                }.frame(minHeight: minRowHeight, alignment: .center)
                .padding(.horizontal)
            
                
        }.listStyle(PlainListStyle())
            .frame(minHeight: minRowHeight * 1.3)
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
        }
    }
    
    struct FilterFeedView_Previews: PreviewProvider {
        static var previews: some View {
            FilterFeedView()
        }
    }
