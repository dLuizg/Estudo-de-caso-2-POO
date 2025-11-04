import 'dart:io';
import 'package:estudo_de_caso_2/funcionario.dart';
import 'package:estudo_de_caso_2/gerente.dart';
import 'package:estudo_de_caso_2/desenvolvedor.dart';
import 'package:estudo_de_caso_2/estagiario.dart';

void main() {
  List<Funcionario> funcionarios = [];

  while (true) {
    print('========== MENU ==========');
    print('1 - Adicionar Gerente');
    print('2 - Adicionar Desenvolvedor');
    print('3 - Adicionar Estagiário');
    print('4 - Listar Funcionários');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    var opcao = stdin.readLineSync();

    if (opcao == '0') {
      print('\nEncerrando o sistema...');
      break;
    }

    switch (opcao) {
      case '1':
        funcionarios.add(criarFuncionario('Gerente'));
        break;
      case '2':
        funcionarios.add(criarFuncionario('Desenvolvedor'));
        break;
      case '3':
        funcionarios.add(criarFuncionario('Estagiário'));
        break;
      case '4':
        if (funcionarios.isEmpty) {
          print('\nNenhum funcionário cadastrado ainda.\n');
        } else {
          print('\n===== LISTA DE FUNCIONÁRIOS =====');
          for (var f in funcionarios) {
            f.exibirInformacoes();
          }
        }
        break;
      default:
        print('Opção inválida. Tente novamente.\n');
    }
  }
}

// Função auxiliar para criar funcionário de acordo com o tipo
Funcionario criarFuncionario(String tipo) {
  stdout.write('\nNome: ');
  String? nome = stdin.readLineSync();

  stdout.write('Matrícula: ');
  String? matricula = stdin.readLineSync();

  stdout.write('Salário base: ');
  double? salario = double.tryParse(stdin.readLineSync() ?? '');

  if (nome == null || matricula == null || salario == null) {
    throw Exception('Dados inválidos.');
  }

  switch (tipo) {
    case 'Gerente':
      return Gerente(nome, matricula, salario);
    case 'Desenvolvedor':
      return Desenvolvedor(nome, matricula, salario);
    case 'Estagiário':
      return Estagiario(nome, matricula, salario);
    default:
      throw Exception('Tipo de funcionário inválido.');
  }
}