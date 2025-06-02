class Equipamento {
  final String patrimonio;
  final String localizacao;
  final String marca;
  final String modelo;
  final int btus;
  final String estado;
  final int periodicidade;
  final DateTime proxima;

  Equipamento({
    required this.patrimonio,
    required this.localizacao,
    required this.marca,
    required this.modelo,
    required this.btus,
    required this.estado,
    required this.periodicidade,
    required this.proxima,
  });
}
