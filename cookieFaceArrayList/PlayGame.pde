void PlayGame() {

  //If Touching Cookie
  if (abs(mouseX - cookieX) < 50 && abs(mouseY - cookieY) < 50) {
    cookies.rewind();
    cookies.play();
    cookieX = random(0, width);
    cookieY = random(100, height);
    cookieCount++;
  }

  ////////
  //DRAW//
  ////////

  //Reset Screen
  background(245, 245, 245);

  fill(150, 150, 150);
  rect(0, 0, width, 100);

  //Draw Exit Box
  if(mouseX > (width * 7/8) && mouseX < width && mouseY < height * 1/8 && mouseY > 0){
    fill(200, 0, 0);
    rect(width * 7/8, 0, width * 2/8, 100);
    
    //End GAme
    if((mousePressed == true && mouseX > (width * 7/8) && mouseX < width && mouseY < height * 1/8 && mouseY > 0)) {
      isPlay = false;
      isEnd = true;
      isStart = false;
      
      earlyEnd = true;
      
      tail.clear();
    }
  } else {
    fill(150, 0, 0);
    rect(width * 7/8, 0, width * 2/8, 100);
  }

  //Draw Cookie
  image(cookie, (int)cookieX - 25, (int)cookieY - 25);

  //New Tail Segment
  if(mouseY > 100){
    Ellipse a = new Ellipse(mouseX, mouseY);
    tail.add(a); 
  }

  //Delete End Segment If At MAX
  if (tail.size() >= MAX)
    tail.remove(0);

  //Draw Tail
  for (Ellipse e : tail) {
    e.draw();
  }

  //Draw Awesomeness
  image(awesomeness, mouseX - SIZE, mouseY - SIZE);

  //Draw Score
  fill(0, 0, 0);
  textSize(30);
  text("Cookies Collected: " + (int)cookieCount, 20, 50);
  
  
}