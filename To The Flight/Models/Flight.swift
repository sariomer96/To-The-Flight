//
//  Flight.swift
//  To The Flight
//
//  Created by Omer on 12.02.2025.
//

import Foundation

struct Flight: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let departureCode: String
    let arrivalCode: String
    let arrivalTime: String
  
}
