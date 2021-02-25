class Pontuacao{
  int pontosDir, pontosEsq;
  String textoPontosEsq, textoPontosDir;
  Pontuacao(){
    this.pontosDir = 0;
    this.pontosEsq = 0;
    this.textoPontosEsq = "0";
    this.textoPontosDir = "0";
  }
  
  void mostrarTela(){
    stroke(0,255,0);
    line(width/2, 0, width/2, height);
    game.texto(textoPontosDir, 460, 40, 25, 0,255,0);   
    game.texto(textoPontosEsq, 220, 40, 25, 0, 255, 0);
  }
  
  void marcacao(){
    if (bola.posX > width + 50){
      this.pontosEsq++;
    }
    if (bola.posX < 0 - 50){
      this.pontosDir++;
    }   
    this.controleDeCaso();
  }
  
  void controleDeCaso(){
    switch(this.pontosEsq){
      case 0:
        this.textoPontosEsq = "0";
        break;
      case 1:
        this.textoPontosEsq = "1";
        break;
      case 2:
        this.textoPontosEsq = "2";
        break;
      case 3:
        this.textoPontosEsq = "3";
        break;
      case 4:
        this.textoPontosEsq = "4";
        break;
      case 5:
        this.textoPontosEsq = "5";
        break;   
    }
    
    switch(this.pontosDir){
      case 0:
        this.textoPontosDir = "0";
        break;
      case 1:
        this.textoPontosDir = "1";
        break;
      case 2:
        this.textoPontosDir = "2";
        break;
      case 3:
        this.textoPontosDir = "3";
        break;
      case 4:
        this.textoPontosDir = "4";
        break;
      case 5:
        this.textoPontosDir = "5";
        break;   
    }
  }
  
  void estado(){
    mostrarTela();
    marcacao();
  }
}
