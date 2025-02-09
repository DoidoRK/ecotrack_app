import 'package:ecotrack_app/app/data/flood_report_model.dart';
import 'package:ecotrack_app/app/data/user_model.dart';

class Comentario {
  User autor;
  String conteudo;
  RelatoAlagamento relatoAlagamento;

  Comentario({
    required this.autor,
    required this.conteudo,
    required this.relatoAlagamento,
  });

  factory Comentario.fromMap(Map<String, dynamic> map) {
    return Comentario(
      autor: User.fromMap(map['autor']),
      conteudo: map['conteudo'],
      relatoAlagamento: RelatoAlagamento.fromMap(map['relatoAlagamento']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'autor': autor.toMap(),
      'conteudo': conteudo,
      'relatoAlagamento': relatoAlagamento.toMap(),
    };
  }

  @override
  String toString() {
    return 'Comentario(autor: $autor, conteudo: $conteudo, relatoAlagamento: $relatoAlagamento)';
  }
}