import SwiftUI
import PlaygroundSupport

// MARK: - View Pai (usa @State)

struct ContentView: View {
  /// @State: Source of truth - Usado em atributos que vão alterar valores na view(isOn)…
  @State private var isOn: Bool = false /// Estado local da View
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Estado atual: \(isOn ? "Ligado" : "Desligado")")
        .font(.title)
      
      /// Passamos a Binding para a View filha...
      ToggleView(isOn: $isOn)
    }
    .padding()
  }
}

// MARK: - View Filha (usa @Binding)

struct ToggleView: View {
  /// Passa o valor da source of truth(@State) para as view filhas…
  @Binding var isOn: Bool /// A View não cria o estado, apenas recebe ele
  
  var body: some View {
    Toggle("Ativar", isOn: $isOn)
      .toggleStyle(SwitchToggleStyle(tint: .blue))
      .padding()
  }
}

// MARK: - Executando no Playground

PlaygroundPage.current.setLiveView(ContentView())
