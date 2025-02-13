import SwiftUI
import Combine

struct KeyboardAdaptive: ViewModifier {
    @State private var keyboardHeight: CGFloat = 0
    @State private var keyboardIsVisible = false

    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .padding(.bottom, self.keyboardIsVisible ? self.keyboardHeight : 0)
                .onAppear {
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                        if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                            self.keyboardHeight = keyboardFrame.height - geometry.safeAreaInsets.bottom
                            self.keyboardIsVisible = true
                        }
                    }

                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                        self.keyboardHeight = 0
                        self.keyboardIsVisible = false
                    }
                }
                .onDisappear {
                    NotificationCenter.default.removeObserver(self)
                }
        }
    }
}

extension View {
    func keyboardAdaptive() -> some View {
        self.modifier(KeyboardAdaptive())
    }
}
