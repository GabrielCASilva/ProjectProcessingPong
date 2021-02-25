class Jogador{
  // atributos
  int posX, posY, tamX, tamY, velY;
  // métodos
  Jogador(int posX,int posY){
    this.posX = posX;
    this.posY = posY;
    this.tamX = 15;
    this.tamY = 100; 
    
    this.velY = 0;
  }
  
  void desenho(){
    fill(255);
    rect(this.posX, this.posY, this.tamX, this.tamY);
  }
  
  void atualizarPosicao(){
    this.posY += this.velY;
    
    //constrain() limita o espaço do movimento
    this.posY = constrain(this.posY,0,height - tamY);
  }
  
  void movimentacao(int movimento){
    this.velY = movimento;
  }
  
  void pressionado(){
    if(keyPressed){
      if(key == 'o'){
        this.movimentacao(-5);
      }
      else if (key == 'l'){
        this.movimentacao(5);
      }
    }
  }
  
  void solto(){
    if(!keyPressed){
      this.movimentacao(0);
    }
  }
  
  void colisao(){
    if (this.posY > height - this.tamY || this.posY < 0){
      this.posY *= -1;
    }
  }
  
  void estadoJogador(){
    this.desenho();
    this.atualizarPosicao();
    this.pressionado();
    this.solto();
  }
  
  void estadoInimigo(){
    this.desenho();
    this.atualizarPosicao();
    this.movimentacao(bola.velY - 1);
  }
}
