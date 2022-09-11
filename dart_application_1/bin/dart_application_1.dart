void main() {
  Legumes legume1 = Legumes("Brocolis", 200, "Salgado", "Verde", true);
  Frutas fruta1 = Frutas("Morango", 40, "Doce", "Vermelho", 30, 80);
  Nozes noz1 = Nozes("Amendoim", 4, "Salgado", "Marrom", 35);
  Citricas citrica1 = Citricas("Abacaxi", 300, "Doce/Azedo", "Verde/Amarelo", 30);

legume1.printAlimento();
fruta1.printAlimento();
noz1.printAlimento();
citrica1.printAlimento();
legume1.printer();
citrica1.printer();


}

class Frutas extends Alimentos{
  int DiasdeColheita; 
  int NivelDoce; // Nivel de doce 0 a 100
  bool? isMaduro;
  
  
  Frutas(String nome, double peso, String sabor, String cor, this.DiasdeColheita, this.NivelDoce, {this.isMaduro})
  : super(nome, peso, sabor, cor);


}

class Alimentos {
  String nome;
  double peso;
  String sabor;
  String cor;

  Alimentos(this.nome, this.peso, this.sabor, this.cor);

  void printAlimento(){
    print("Este(a) $nome esta pesando $peso gramas, e tem o sabor de $sabor e tem a cor de $cor");
  }

}

class Legumes extends Alimentos{
  bool isCozido;
  
  Legumes(String nome, double peso, String sabor,String cor, this.isCozido)
  :super(nome, peso, sabor, cor);

  printer(){
    if(isCozido){
      print("Este(a) $nome ja esta cozido");
    }
    else{
      print("Este(a) $nome esta precisando ser cozido");
    }
  }


}

class Citricas extends Alimentos{

  int NivelAcidez; // Nivel de 0 a 100

  Citricas(String nome, double peso, String sabor, String cor, this.NivelAcidez)
  :super(nome, peso, sabor, cor);

  void printer(){
    print("Você consegue fazer um ótimo suco de $nome");
  }

}

class Nozes extends Alimentos {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String sabor, String cor,this.porcentagemOleoNatural)
      : super(nome, peso, sabor, cor);
}
