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

  void printDialog(String d) {
    print(d + '\n');
  }

  void printBlancLine() {
    print('\n');
  }

  String QueryUser(String dialog, field) {
    stdout.write(field + ': ');

    String? resp = stdin.readLineSync()!;

    return resp;
  }
}
