void EndMnu() {
  
  background(0, 0, 0);

  if(timer < 1) {
  ranX = random(0, width);
  ranY = random(0, height);
  timer = 30;
  }
  
  fill(255, 255, 255);
  rect(ranX - 50, ranY - 50, 100, 100);
  
  fill(0, 0, 0);
  ellipse(ranX - 50, ranY - 50, 100, 100);
  
  ellipse(ranX - 50, ranY + 50, 100, 100);  

  ellipse(ranX + 50, ranY - 50, 100, 100);

  ellipse(ranX + 50, ranY + 50, 100, 100);
  timer--;
  
  //image(space, 0, 0);
  //image(worm, width * 3/12, height * 1/4);
  
  //New Tail Segment
  
  Ellipse a = new Ellipse(mouseX, mouseY);
  tail.add(a); 
  

  //Delete End Segment If At MAX
  if (tail.size() >= MAX)
    tail.remove(0);

  //Draw Tail
  for (Ellipse e : tail) {
    e.draw();
  }

  //Draw Awesomeness
  image(awesomeness, mouseX - SIZE, mouseY - SIZE);
  
  /*for(int i = 0; i < ENDWORM; i++){
    int runs = 0;
    Ellipse(endWormX.get(runs), endWormY.get(runs));
    runs++;  
  }*/
  
  /*for(int i = 0; i < endWorm.length(); i++)
  Ellipse i = new Ellipse(endWormX.get(i), endWormY.get(i))
  endWorm.add(i);*/

  //Draw Scores
  textFont(Bold);
  fill(0, 200, 0);
  text("You Scored " + (int)cookieCount + " Cookies!", width * 1/4, height * 1/5);

  text("Efficiency of " + (int)(cookieCount / 30) + " cookies per second!", width * 1/7, height * 2/5);

  //Draw Restart
  if(mouseX > width * 1/8 && mouseX < width * 7/8 && mouseY > height * 4/6 && mouseY < height * 5/6){
    fill(40, 220, 40);
    rect(width * 1/8, height * 4/6, width * 6/8, height * 1/6);
    
    //If Button Pressed
    if(mousePressed == true && mouseX > width * 1/8 && mouseX < width * 7/8 && mouseY > height * 4/6 && mouseY < height * 5/6) {
      
      //Restart Game
      isPlay = true;
      isEnd = false;
      isStart = false;
      
      tail.clear();
      
      restMillis = millis();
    }
  } else {
    fill(20, 200, 20);
    rect(width * 1/8, height * 4/6, width * 6/8, height * 1/6);
  }
  
  fill(0, 0, 0);
  text("Try Again?", width * 9/24 , height * 37/48);
  
  fill(120, 0, 0);
  rect(width * 1/8, height * 5/6, width * 5/16, height * 1/6);
  rect(width * 9/16, height * 5/6, width * 5/16, height * 1/6);
}