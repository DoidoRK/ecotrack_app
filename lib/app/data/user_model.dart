import 'package:ecotrack_app/app/data/address_model.dart';
import 'package:ecotrack_app/app/data/flood_report_model.dart';

class User {
  String nome;
  String senha;
  String cpf;
  String dataNascimento;
  Endereco endereco;
  String email;
  String numeroDeTelefone;
  List<RelatoAlagamento> pontosRelatados;

  User({
    this.nome = '',
    this.senha = '',
    this.cpf = '',
    this.dataNascimento = '',
    Endereco? endereco,
    this.email = '',
    this.numeroDeTelefone = '',
    List<RelatoAlagamento>? pontosRelatados,
  })  : endereco = endereco ?? Endereco(
      rua: '',
      numero: '',
      complemento: '',
      bairro: '',
      cidade: '',
      cep: '',
      estado: '',
    ),
        pontosRelatados = pontosRelatados ?? [];

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      nome: map['nome'] ?? '',
      senha: map['senha'] ?? '',
      cpf: map['cpf'] ?? '',
      dataNascimento: map['dataNascimento'] ?? '',
      endereco: Endereco.fromMap(map['endereco'] ?? {}),
      email: map['email'] ?? '',
      numeroDeTelefone: map['numeroDeTelefone'] ?? '',
      pontosRelatados: List<RelatoAlagamento>.from(
        map['pontosRelatados']?.map((x) => RelatoAlagamento.fromMap(x)) ?? [],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'senha': senha,
      'cpf': cpf,
      'dataNascimento': dataNascimento,
      'endereco': endereco.toMap(),
      'email': email,
      'numeroDeTelefone': numeroDeTelefone,
      'pontosRelatados': pontosRelatados.map((x) => x.toMap()).toList(),
    };
  }

  @override
  String toString() {
    return 'User(nome: $nome, senha: $senha, cpf: $cpf, dataNascimento: $dataNascimento, endereco: $endereco, email: $email, numeroDeTelefone: $numeroDeTelefone, pontosRelatados: $pontosRelatados)';
  }
}