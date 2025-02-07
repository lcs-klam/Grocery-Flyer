//
//  NavigationView.swift
//  Grocery Flyer
//
//  Created by Kevin Lam on 5/2/2025.
//

import SwiftUI

struct DetailedView: View {
    let departmentToShow: Department
    
    
    var body: some View {
        List(departmentToShow.items) { currentItem in
            VStack(alignment: .leading) {
                Text(currentItem.name)
                    .font(.headline)
                
                Text("\(currentItem.price) per \(currentItem.quantity) \(currentItem.measurement)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Spacer()
                    Image(currentItem.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                    Spacer()
                }
                    
            }
            .padding(20)
            .border(.black, width: 6)
            .clipShape(RoundedRectangle(cornerRadius:10))
    
        }
        .navigationTitle(departmentToShow.name)
    }
}
#Preview {
    DetailedView(departmentToShow: thisWeeksFlyer.departments[1])
}


