import SwiftUI

// MARK: - Bottom Bar
struct BottomBar: View {
    @Binding var selectedTab: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                selectedTab = "home"
            }) {
                Image(systemName: "airplane")
                    .font(.system(size: 24))
                    .foregroundColor(selectedTab == "home" ? .blue : .gray)
            }
            
            Spacer()
            
            Button(action: {
                // Add new flight action
            }) {
                ZStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 80, height: 80)
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            Button(action: {
                selectedTab = "profile"
            }) {
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 24))
                    .foregroundColor(selectedTab == "profile" ? .blue : .gray)
            }
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width * 0.82, height: 60)
        .background(Color(UIColor(red: 246/255, green: 247/255, blue: 250/255, alpha: 1)).cornerRadius(20))
    }
}
