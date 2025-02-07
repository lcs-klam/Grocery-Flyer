//
//  NavigationView.swift
//  Grocery Flyer
//
//  Created by Kevin Lam on 5/2/2025.
//

import SwiftUI

struct NavigationView: View {
    let departmentToShow: Department
    
    var body: some View {
        List(departmentToShow.items) { currentItem in
            VStack(alignment: .leading) {
                Text(currentItem.name)
                    .font(.headline)
                
                Text("\(currentItem.price) per \(currentItem.quantity) \(currentItem.measurement)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Image(currentItem.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.vertical, 5)
        }
        .navigationTitle(departmentToShow.name)
    }
}
#Preview {
    NavigationView(departmentToShow: thisWeeksFlyer.departments[1])
}


