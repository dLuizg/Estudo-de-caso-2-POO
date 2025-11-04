import 'funcionario.dart';

class Gerente extends Funcionario {
  Gerente(String nome, String matricula, double salarioBase)
      : super(nome, matricula, salarioBase);

  @override
  double calcularBonus() => salarioBase * 0.20;

  @override
  void exibirInformacoes() {
    print('Cargo: Gerente');
    super.exibirInformacoes();
  }
}
