import SwiftUI

struct AccountView: View {
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var email: String = ""
    @State private var isDarkMode: Bool = false
    @State private var notificationsEnabled: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("PROFILE")) {
                        TextField("Name", text: $name)
                        TextField("Surname", text: $surname)
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                    }
                    
                    Section(header: Text("SETTINGS")) {
                        HStack {
                            Text("Appearance:")
                            Spacer()
                            Picker("Appearance", selection: $isDarkMode) {
                                Text("☀️ Light").tag(false)
                                Text("🌙 Dark").tag(true)
                            }
                            .pickerStyle(SegmentedPickerStyle())
                        }
                        Toggle("Notifications:", isOn: $notificationsEnabled)
                    }
                    
                    
                }
            }
            .navigationBarTitle("My Account", displayMode: .large)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
