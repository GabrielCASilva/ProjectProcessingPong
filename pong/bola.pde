class Bola{
  // atributos
  
  int posX, posY, tamX, tamY, velX, velY;
  
  // metodos
  Bola(){
    //aqui fica as coisa pronta
    this.posX = width/2;
    this.posY = height/2;
    this.tamX = 20;
    this.tamY = 20;
    
    //velocidades
    this.velX = -5;
    this.velY = -5;
  }
  
  void desenho(){
    fill(255,0,0);
    ellipse(this.posX,this.posY,this.tamX,this.tamY);
  }
  
  void movimentacao(){
      this.posX += velX;
      this.posY += velY;
  }
  
  void resetarPosicao(){
    this.posX = width/2;
    this.posY = height/2;
    
    //velocidade
    this.velX = -5;
    this.velY = -5;
  }
  
  void colisao(){
    // Parede
    if (this.posX > width + 50 || this.posX < 0 - 50){
      this.resetarPosicao();
    }
    
    // Parede de cima
    if (this.posY >= height || this.posY <= 0){
      this.velY *= -1;
    }
    
    // Colisão com Jogador
    if (this.posX >= jogador.posX && this.posY >= jogador.posY && this.posY <= jogador.posY + jogador.tamY){
      this.velX *= -1;
    }
    
    // Colisão com Adversario
    if (this.posX <= adversario.posX + adversario.tamX && this.posY >= adversario.posY && this.posY <= adversario.posY + adversario.tamY){
      this.velX *= -1;
    }
    
    
  }
  
  void estado(){
    // o que está acontecendo
    // juntando os métodos
    this.desenho();
    this.colisao();
    this.movimentacao();
  }
}
