Bola bola;
Game game;
Jogador jogador, adversario;
Pontuacao pontos;
  
void setup(){
  size(700, 500);
  game = new Game();
  pontos = new Pontuacao();
  bola = new Bola();
  
  jogador = new Jogador(635, 200);
  adversario = new Jogador(50, 200);
}

void draw(){
  background(0);
  game.estado();
}
