import SwiftUI

// MARK: - Flight Row
struct FlightRow: View {
    let flight: Flight
    let imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.8), lineWidth: 2))
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(flight.name)
                    .font(.system(size: 24))
                    .bold()
                
                HStack {
                    Text(flight.departureCode)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    Image(systemName: "airplane")
                        .foregroundColor(.gray)
                    Text(flight.arrivalCode)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                }
                
                Text("Arrival: \(flight.arrivalTime)")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            // Sağ tarafa büyüktür (>) işareti ekleme
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.system(size: 18))
        }
        .frame(maxWidth: .infinity, minHeight: 70, alignment: .leading)
        .padding()
    }
}
