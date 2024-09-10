import 'dart:io';

class Tela {
  static const logo = '''---------------------------------------------
| PROGRAMA DE CADASTRAMENTO DE FUNCIONÁRIOS |
|             SOMOS _ CORINTHIANS           |
---------------------------------------------''';
// Função para limpar a tela no terminal
  void limparTela() {
    if (Platform.isWindows) {
      // Comando para Windows
      print(Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      // Comando para Linux
      print(Process.runSync("clear", [], runInShell: true).stdout);
    }
  }

  void printLogo() {
    print(logo);
  }

  void printMenu(String options) {
    print(options);
  }

  String QueryUser(String dialog, field) {
    print(dialog + '\n');
    stdout.write(field + ': ');

    String? resp = stdin.readLineSync()!;

    return resp;
  }
}


    // print("DIGITE O NÚMERO DA OPÇÃO QUE DESEJA!");
    // print("---------------------------------------------");
    // print("[1] - CADASTRAR NOVO FUNCIONÁRIO");
    // print("[2] - VERIFICAR DADOS DE FUNCIONÁRIO JÁ CADASTRADO");
    // print("[3] - SAIR");