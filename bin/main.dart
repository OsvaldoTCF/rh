import 'package:intl/intl.dart';
import 'package:rh/io/tela.dart';
import 'package:rh/rh/funcionario.dart';
import 'package:rh/utilities/date.dart';
import 'package:intl/date_symbol_data_local.dart';

var tela = new Tela();

void main() {
  Intl.defaultLocale = 'pt_BR';
  initializeDateFormatting('pt_BR');

  // inicializa tela
  initializeScreen();

  createFuncionarios(3);

  //criar cargos

  // instancia a classe funconário

  var f1 = new Funcionario();
  f1.nome = "Clóvis";
  f1.mat = 111;
  f1.sexo = 'M';

  // s = tela.QueryUser(d, f);
  // print('\n' + s);
}

void createFuncionarios(int count) {
  var func = new Funcionario();
  for (var i = 0; i < count; i++) {
// para facilitar, cria constantes para usar na função de entrada do usuário
    const d = 'Entre com os dados do novo Funcionário.';
    tela.printDialog(d);
    func.mat = int.parse(tela.QueryUser(d, 'Matrícula'));
    func.nome = tela.QueryUser('', 'Nome');
    func.sexo = tela.QueryUser('', 'Sexo');
    tela.printBlancLine();
  }
}

void initializeScreen() {
  tela.limparTela();
  var dt = Date.ToString(DateTime.now(), 'dd/mm/yyyy');
  print('Data do Sistema: ' + dt);
  tela.printLogo();
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
