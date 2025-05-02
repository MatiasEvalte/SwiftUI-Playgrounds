import SwiftUI
import PlaygroundSupport

extension View {
  func titleStyle() -> some View {
    self
      .font(.system(size: 24, weight: .bold))
      .foregroundColor(.purple)
      .padding(.bottom, 8)
  }
  
  func cardStyle() -> some View {
    self
      .padding()
      .background(Color.white)
      .cornerRadius(16)
      .shadow(radius: 8)
  }
  
  func roundedButtonStyle() -> some View {
    self
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .background(Color.blue)
      .clipShape(RoundedRectangle(cornerRadius: 12))
  }
}

struct ContentView: View {
  var body: some View {
    VStack(spacing: 16) {
      // Uso do titleStyle() em uma Text.
      Text("Título Estilizado")
        .titleStyle()
      
      // Uso do cardStyle() em uma Text.
      Text("Cartão")
        .cardStyle()
      
      // Uso do roundedButtonStyle() em um Button.
      Button("Clique aqui") {
        print("Botão clicado")
      }
      .roundedButtonStyle()
    }
    .padding()
    .background(Color.gray.opacity(0.2))
  }
}

PlaygroundPage.current.setLiveView(ContentView())
