import SwiftUI

struct MyFlightScreen: View {
    
     
    let flights: [Flight] = [
        Flight(name: "Munich Airport", departureCode: "BCN", arrivalCode: "MUC", arrivalTime: "2:00 PM"),
        Flight(name: "Barcelona Airport", departureCode: "MUC", arrivalCode: "BCN", arrivalTime: "4:00 PM"),
        Flight(name: "London Gatwick Airport", departureCode: "LHR", arrivalCode: "MUC", arrivalTime: "6:30 PM") ,
        Flight(name: "Barcelona Airport", departureCode: "MUC", arrivalCode: "BCN", arrivalTime: "4:00 PM"),
        Flight(name: "London Gatwick Airport", departureCode: "LHR", arrivalCode: "MUC", arrivalTime: "6:30 PM")
    ]
    
    @State private var selectedTab: String = "home"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HeaderView(title: "My Flights")
                 
                List(Array(flights.enumerated()), id: \.element.id) { index, flight in
                    FlightRow(flight: flight, imageName: "\(index + 1)")
                }
                .listStyle(PlainListStyle())

            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(trailing: EditButtonView())
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                                   BottomBar(selectedTab: $selectedTab)
                               }
            }
        }
    }
}

struct MyFlightScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MyFlightScreen()
    }
}

struct EditButtonView: View {
    var body: some View {
        Button(action: {
            // Edit action
        }) {
            Text("Edit")
                .font(.system(size: 20))
                .bold()
        }
    }
}

