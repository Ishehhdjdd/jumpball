Player player;
Platform p;
Platform p2;
Platform g;
Platform[]ground = new Platform[10];
DigitBoard scoreBoard = new DigitBoard(100);
DigitBoard timer = new DigitBoard(100);
void setup() {
  size(1600, 800);
  player = new Player(600, 350, 0, 0);
  for (int i = 0; i < ground.length; i ++) {
    int x = 0;
    int y = 400;
    int size  = 0;
    if (i == 0) {
      x = 50;
    } else {
      x = (int)ground[i - 1].x + ground[i - 1].size + 40 + (int)(Math.random() * 100);
      y = 400 - 25 + (int)(Math.random() * 50);
    }


    size = 100 + (int)(Math.random() * 100);
    ground[i] = new Platform(x, y, size);
  }
}

void draw() {
  background(20);
  boolean b = player.move();
  if (timer.a >0) {

    if (b == false ) {

      scoreBoard.min(5);
    }
  }


  boolean tg = false;
  for (Platform g : ground) {
    if (g.inUpReagoin(player)) {
      tg = true;
      break;
    }
  }
  for (int i = 0; i < ground.length; i ++) {

    ground[i].show();
    if (timer.a>0) {
      int pre = i - 1;
      if (pre < 0) {

        pre = ground.length - 1;
      }
      ground[i].move( -1, ground[pre]);
    }
  }
  player.control(tg);
  player.show();
  scoreBoard.show("score", width - 300, 130);
  timer.show("timer", width - 300, 80);
  if (timer.a> 0) {
    if (frameCount % 5 ==  0) {
      timer.min(1);
    }
  }
}
