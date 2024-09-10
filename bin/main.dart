import 'package:rhcontrol/io/tela.dart';

void main() {
  var tela = new Tela();

  tela.limparTela();
  tela.printLogo();

  var dialog = '''Entre com os dados do Funcionário.
  AGORA!''';
  var field = 'Nome';

  final String s;
  s = tela.QueryUser(dialog, field);
  print('\n' + s);
}


// import 'dart:io';

// import 'package:rhcontrol/rh/rh.dart';
// import 'package:rhcontrol/tela.dart';

// void main() {
//   var tela = new Tela(); // usa o constructor implicito/default

//   String sair = "n";
//   int i = 1;
//   tela.limparTela();
//   tela.printLogo();

//   cadastrarFuncionario(i);

//   while (sair == "n" || sair == "N") {
//     tela.printLogo(); // Exibe a logo após limpar a tela
//     tela.printMenu();
//     int escolha = int.parse(stdin.readLineSync()!);
//     switch (escolha) {
//       case 1:
//         i++;
//         cadastrarFuncionario(i);
//         break;
//       case 2:
//         tela.limparTela(); // Limpa a tela antes de exibir as informações
//         print(
//             "DIGITE A MATRICULA QUE DESEJA VERIFICAR (entre 1 e ${funcionarios.length}):");
//         int mat = int.parse(stdin.readLineSync()!);
//         // Ajusta o índice para zero-based
//         int indice = mat - 1;

//         // Verifica se o índice está dentro do intervalo correto
//         if (indice >= 0 && indice < funcionarios.length) {
//           funcionarios[indice].exibirCadastro();
//         } else {
//           print("Matrícula não existe.");
//         }
//         // Pausa para apresentar a informação
//         print("Pressione Enter para continuar...");
//         stdin.readLineSync();
//         break;
//       default:
//         print("Consulta encerrada.");
//         sair = "s";
//     }
//   }
// }
