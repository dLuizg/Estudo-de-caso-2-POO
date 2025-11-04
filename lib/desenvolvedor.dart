import 'funcionario.dart';

class Desenvolvedor extends Funcionario {
  Desenvolvedor(String nome, String matricula, double salarioBase)
      : super(nome, matricula, salarioBase);

  @override
  double calcularBonus() => salarioBase * 0.10;

  @override
  void exibirInformacoes() {
    print('Cargo: Desenvolvedor');
    super.exibirInformacoes();
  }
}
