abstract class Funcionario {
  String _nome;
  String _matricula;
  double _salarioBase;

  Funcionario(this._nome, this._matricula, this._salarioBase);

  // Encapsulamento com getters e setters
  String get nome => _nome;
  String get matricula => _matricula;
  double get salarioBase => _salarioBase;

  set salarioBase(double valor) {
    if (valor <= 0) {
      throw Exception("O salário deve ser positivo.");
    }
    _salarioBase = valor;
  }

  // Método abstrato
  double calcularBonus();

  // Método padrão de exibição
  void exibirInformacoes() {
    print('Funcionário: $_nome');
    print('Matrícula: $_matricula');
    print('Salário: R\$ ${_salarioBase.toStringAsFixed(2)}');
    print('Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}\n');
  }
}
