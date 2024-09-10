import 'package:rhcontrol/rh/contracheque.dart';

import 'cargo.dart';

//Classe sendo implementada
class Funcionario {
  int mat = 0;
  String nome = "";
  String sexo = "";
  Cargo? cargo;
  List<Contracheque> Contracheques = [];

  //Funcionario(this.mat, this.nome, this.sexo, this.cargo);
  void Promocao(Cargo NovoCargo) {
    this.cargo = NovoCargo;
  }
}

// List<Funcionario> funcionarios =
//     []; //Lista que fará com que seja acrescentados funcionários

// //Metodo de cadastramento de novo funcionário
// void cadastrar() {
//   limparTela();
//   print("CADASTRANDO NOVO FUNCIONÁRIO...");
//   print("NOME: ");
//   String? nome = stdin.readLineSync()!;

//   //condicional para que o sexo seja escolhido entre F e M.
//   String sexo = "";
//   do {
//     limparTela();
//     print("SEXO:");
//     print("[F] FEMININO");
//     print("[M] MASCULINO");
//     sexo = stdin.readLineSync() ?? "";
//   } while (sexo != "f" && sexo != "F" && sexo != "m" && sexo != "M");

//   Cargo cargosel =
//       cargo1; //Variavel criada para armanezar o valor do cargo no tipo "cargo" e instaciar o objeto funcionário
//   int esccargo = 0;

//   while (esccargo < 1 || esccargo > 5) {
//     limparTela();
//     print("ESCOLHA O CARGO:");
//     print("[1] ${cargo1.nome}");
//     print("[2] ${cargo2.nome}");
//     print("[3] ${cargo3.nome}");
//     print("[4] ${cargo4.nome}");
//     print("[5] ${cargo5.nome}");
//     print(" ");
//     esccargo = int.parse(stdin
//         .readLineSync()!); //Condicional apenas para que o usuário escolha um número

//     switch (esccargo) {
//       case 1:
//         cargosel = cargo1;
//         break;
//       case 2:
//         cargosel = cargo2;
//         break;
//       case 3:
//         cargosel = cargo3;
//         break;
//       case 4:
//         cargosel = cargo4;
//         break;
//       case 5:
//         cargosel = cargo5;
//         break;
//       default:
//         print("ESCOLHA UMA OPÇÃO VÁLIDA!");
//         stdin.readLineSync();
//     }
//   }

//   int mat = funcionarios.length + 1;

//   limparTela();

//   funcionarios.add(Funcionario(mat, nome, sexo, cargosel));
//   print("${nome.toUpperCase()} CADASTRADO.");
//   // Pausa para apresentar a informação
//   print("Pressione Enter para continuar...");
//   limparTela();
// }

//Metodo de registros de funcionários para poder editar ou realizar operações de funcionário já registrados
// void registrar() {}
