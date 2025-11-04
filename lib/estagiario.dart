import 'funcionario.dart';

class Estagiario extends Funcionario {
  Estagiario(String nome, String matricula, double salarioBase)
      : super(nome, matricula, salarioBase);

  @override
  double calcularBonus() => salarioBase * 0.05;

  @override
  void exibirInformacoes() {
    print('Cargo: Estagiário');
    super.exibirInformacoes();
  }
}
