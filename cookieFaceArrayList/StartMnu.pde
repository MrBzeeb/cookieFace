void StartMnu() {

  background(220, 220, 220);

  if (mouseX > (width * 1/6) && mouseX < (width * 5/6) && mouseY > (height * 4/6) && mouseY < (height * 5/6)) {
    fill(0, 200, 200);  
    rect(width * 1/6, height * 4/6, width * 4/6, height * 1/6);
  } else {
    fill(0, 220, 220);  
    rect(width * 1/6, height * 4/6, width * 4/6, height * 1/6);
  }


  if (mousePressed == true && mouseX > (width * 1/6) && mouseX < (width * 5/6) && mouseY > (height * 4/6) && mouseY < (height * 5/6)) {
    isStart = false;
    isPlay = true;
    isEnd = false;
  }
  
  fill(0, 0, 0);
  textFont(SuperBold);
  text("START", width * 4/10, height * 9/12);
}