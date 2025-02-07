//
//  ContentView.swift
//  Grocery Flyer
//
//  Created by Kevin Lam on 5/2/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(thisWeeksFlyer.departments) {
                currentDepartment in NavigationLink {
                    NavigationView(departmentToShow: currentDepartment)
                } label: {
                    Text(currentDepartment.name)
                }
            }
            .navigationTitle("This Week's Flyer")
        }
    }
}

#Preview {
    ContentView()
}
