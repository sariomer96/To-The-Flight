import SwiftUI

struct MainView: View {
    @State private var selectedTab: String = "home"

    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                MyFlightScreen()
                    .tag("home")
                
                AccountView()
                    .tag("profile")
            }
            
            BottomBar(selectedTab: $selectedTab) // Alt bar sabit kalacak
        }
    }
}

// ✈️ Uçuşlar Ekranı
struct MyFlightScreen: View {
    let flights: [Flight] = [
        Flight(name: "Munich Airport", departureCode: "BCN", arrivalCode: "MUC", arrivalTime: "2:00 PM"),
        Flight(name: "Barcelona Airport", departureCode: "MUC", arrivalCode: "BCN", arrivalTime: "4:00 PM"),
        Flight(name: "London Gatwick Airport", departureCode: "LHR", arrivalCode: "MUC", arrivalTime: "6:30 PM")
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("My Flights")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                List(flights, id: \.departureCode) { flight in
              
                    FlightRow(flight: flight, imageName: "\(Int.random(in: 1...5))")
                }
                .listStyle(PlainListStyle())
            }
    
            .navigationBarItems(trailing: EditButtonView())
        }
    }
}
 


// ✏️ Düzenleme Butonu
struct EditButtonView: View {
    var body: some View {
        Button(action: {
            // Düzenleme işlemi
        }) {
            Text("Edit")
                .font(.system(size: 20))
                .bold()
        }
    }
}

 

// 📌 Önizleme
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
