import SwiftUI

/// Exemplo de uso do `ViewThatFits`
/// O `ViewThatFits` avalia múltiplas views na ordem fornecida
/// e renderiza apenas a primeira que cabe no espaço disponível.
///

import SwiftUI
import PlaygroundSupport

struct ViewThatFitsExample: View {
  var body: some View {
    ScrollView {
      
      // MARK: - Exemplo 1: Texto grande ou pequeno
      
      VStack {
        ViewThatFits {
          Text("Este é um texto muito longo que pode não caber na tela.")
            .font(.title)
            .foregroundColor(.blue)
          Text("Texto curto.")
            .font(.body)
            .foregroundColor(.gray)
        }
        .padding()
        .border(Color.blue)
      }
      .padding()
      
      // MARK: - Exemplo 2: Layout horizontal ou vertical
      
      VStack(spacing: 16) {
        ViewThatFits {
          HStack(spacing: 20) {
            Color.red.frame(width: 80, height: 80)
            Color.blue.frame(width: 80, height: 80)
          }
          
          VStack(spacing: 20) {
            Color.red.frame(width: 80, height: 80)
            Color.blue.frame(width: 80, height: 80)
          }
        }
      }
      
      // MARK: - Exemplo 3: Botão com texto grande e pequeno
      
      VStack(spacing: 16) {
        ViewThatFits {
          Button("Clique aqui para realizar uma ação importante com muitas palavras") {
            print("Botão grande pressionado")
          }
          .padding()
          .background(.gray)
          .cornerRadius(8)
          
          Button("Ação") {
            print("Botão pequeno pressionado")
          }
          .padding()
          .background(.gray)
          .cornerRadius(8)
        }
      }
    }
  }
}

PlaygroundPage.current.setLiveView(ViewThatFitsExample())
