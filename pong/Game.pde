class Game{
  
  int fase;
  
  Game(){
    this.fase = 0;
  }
  
  void texto(String texto, int posX, int posY, int tam, int r, int g, int b){
    textSize(tam);
    fill(r, g, b);
    text(texto, posX, posY); 
  }
  
  void telaInicial(){
    this.fase = 0;
    this.texto("Precione 'ENTER' para iniciar", width/2 - 200, height/2, 30, 255, 255, 255);
  }
  
  void telaFase(){   
    pontos.estado();
    noStroke();
    bola.estado();
    jogador.estadoJogador();
    adversario.estadoInimigo(); 
  }
  
  void telaVitoria(){
    this.fase = 2;
    background(0, 255, 0);
    this.texto("Precione 'r' para voltar ao inicio", width/2 - 230, height/2, 30, 0, 0, 0);
  }
  
  void telaDerrota(){
    this.fase = 3;
    background(255, 0, 0);
    this.texto("Precione 'r' para voltar ao inicio", width/2 - 230, height/2, 30, 0, 0, 0);
  }
  
  void estado(){
    
    if(keyPressed){
      if(key == ENTER || key == RETURN){
        if(this.fase == 0){
          this.fase = 1;
        }
      }  
      if(key == 'r' || key == 'R'){
        if(this.fase == 2 || this.fase == 3){
          this.fase = 0;
        }
      }
    }
    
    
    switch(this.fase){
      case 0:
        this.telaInicial();
        break;
      case 1:
        this.telaFase();
        break;
      case 2:
        this.telaVitoria();
        break;
      case 3:
        this.telaDerrota();
        break;
    }
    
    if(pontos.pontosDir == 5){
      this.telaVitoria();
      pontos.pontosDir = 0;
      pontos.pontosEsq = 0;
    }
    
    if(pontos.pontosEsq == 5){
      this.telaDerrota();
      pontos.pontosDir = 0;
      pontos.pontosEsq = 0;
    }
  }
}
