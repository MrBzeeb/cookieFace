void StartMnu() {

  background(220, 220, 220);

  //Corner Things
  image(awesomeness, 0, 0);
  image(awesomeness, width - 140, 0);
  image(awesomeness, 0, height - 140);
  image(awesomeness, width - 140, height - 140);


  if (mouseX > (width * 1/6) && mouseX < (width * 5/6) && mouseY > (height * 4/6) && mouseY < (height * 5/6)) {
    fill(0, 200, 200);  
    rect(width * 1/6, height * 4/6, width * 4/6, height * 1/6);
    
    //Prompt
    fill(50, 0, 50);
    textFont(Bold, 72);
    text("PLAY", width * 13/32, height * 14/18);
  } else {
    fill(0, 220, 220);  
    rect(width * 1/6, height * 4/6, width * 4/6, height * 1/6);
    
    //Prompt
    fill(0, 0, 0);
    textFont(Bold, 72);
    text("PLAY", width * 13/32, height * 14/18);
  }
  
  fill(255, 0, 255);
  ellipse(mouseX, mouseY, 30, 30);
  
  if (mousePressed == true && mouseX > (width * 1/6) && mouseX < (width * 5/6) && mouseY > (height * 4/6) && mouseY < (height * 5/6)) {
    isStart = false;
    isPlay = true;
    isEnd = false;
  }
  
}