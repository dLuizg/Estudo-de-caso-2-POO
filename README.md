# 🧩 Sistema de Gestão de Funcionários - TechSolutions  

## 📖 Sobre o Projeto  
Este projeto foi desenvolvido em **Dart** com base em um estudo de caso da disciplina de **Programação Orientada a Objetos (POO)**.  
O sistema tem como objetivo **gerenciar funcionários de uma empresa de tecnologia**, aplicando os conceitos fundamentais de **herança, abstração e encapsulamento**.

O sistema permite **cadastrar funcionários** de diferentes cargos e **calcular o bônus anual** de cada um com base em regras específicas.

---

## 🏢 Estrutura de Funcionários  

A empresa possui três categorias de colaboradores:

| Cargo | Percentual de Bônus | Descrição |
|:------|:-------------------:|:-----------|
| 👔 Gerente | 20% | Responsável pela liderança de equipes e gestão estratégica. |
| 💻 Desenvolvedor | 10% | Atua diretamente no desenvolvimento de soluções tecnológicas. |
| 🎓 Estagiário | 5% | Apoia a equipe de desenvolvimento e aprende com os profissionais da área. |

---

## ⚙️ Funcionalidades  

✅ Cadastro de funcionários via menu interativo no terminal  
✅ Armazenamento dos dados em uma lista dinâmica  
✅ Cálculo automático do **bônus anual**  
✅ Exibição formatada de **dados e resultados**  

---

## 🧠 Conceitos de POO Aplicados  

| Conceito | Aplicação |
|:----------|:-----------|
| **Encapsulamento** | Atributos privados (`_nome`, `_matricula`, `_salario`) com getters e setters. |
| **Herança** | As classes `Gerente`, `Desenvolvedor` e `Estagiario` herdam de `Funcionario`. |
| **Abstração** | A classe `Funcionario` é **abstrata** e define o método `calcularBonus()` que é implementado nas subclasses. |
| **Polimorfismo** | O método `calcularBonus()` se comporta de forma diferente em cada tipo de funcionário. |

---

## 🧱 Estrutura do Projeto  
