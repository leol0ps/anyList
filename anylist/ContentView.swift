//
//  ContentView.swift
//  anylist
//
//  Created by Turma01-9 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center).ignoresSafeArea()
            ScrollView{
                VStack {
                    ForEach(vm.animes, id: \.self) { anime in
                        //Text(anime.title)
                        HStack{
                            AsyncImage(
                                url: URL(string: anime.images.jpg.image_url),
                                content: { image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: 100, maxHeight: 100)
                                },
                                placeholder: {
                                    ProgressView()
                                }
                            )
                            Spacer()
                            VStack(alignment: .leading){
                                Text(anime.title)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                //                            Text(anime.score)
                                //                                .foregroundStyle(.white)
                            }
                            Spacer()
                                .frame(width: 10)
                            Image(systemName: "ellipsis")
                            
                        }
                    }
                }.onAppear(){
                    vm.fetchAni()
                }
                
            }
        }
      }
}

#Preview {
    ContentView()
}
