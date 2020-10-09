
//Global Variables
color circlegreen = #418345, white=255, black=0, red=#FF0000, deepRed=#B20000, Scarlet=#E01B1B, Yellow=#FFEA00, DeepYellow=#E3D000, Bee=#FFF04B, Green=#33F200, DeepGreen=#2ED800, Marsh=#2ED800, Blue=#009FFF, DeepBlue=#007FCB, Sky=#55BFFF, Orange=#FF9E00, DeepOrange=#E58E00, Tiger=#FFAF2E, Purple=#A500FF, DeepPurple=#7B00BF, Violet=#CE38FC, lightGray=#B4B4B4, Gray=#8E8E8E, Dash=#626262;
Boolean turnOnScarlet=false, turnOnBee=false, turnOnSky=false, turnOnMarsh=false, turnOnTiger = false, turnOnViolet = false;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;

void setup() {
  //
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  //
  button1X = width * 0.5/12; 
  button1Y = height * 0.5/12; 
  button1Width = width * 3/6 * 3/6;
  button1Height = height * 3/6 * 3/6;
  //
  button2X = width * 4.5/12 ; 
  button2Y = height * 0.5/12 ; 
  button2Width = width * 3/6 * 3/6;
  button2Height = height * 3/6 * 3/6;
  //
  button3X = width * 8.5/12; 
  button3Y = height * 0.5/12; 
  button3Width = width * 3/6 * 3/6;
  button3Height = height * 3/6 * 3/6;
  //
  button4X = width * 8.5/12; 
  button4Y = height * 8.5/12; 
  button4Width = width * 3/6 * 3/6;
  button4Height = height * 3/6 * 3/6;
  //
  button5X = width * 4.5/12; 
  button5Y = height * 8.5/12; 
  button5Width = width * 3/6 * 3/6;
  button5Height = height * 3/6 * 3/6;
  //
  button6X = width * 0.5/12; 
  button6Y = height * 8.5/12; 
  button6Width = width * 3/6 * 3/6;
  button6Height = height * 3/6 * 3/6;
  //
  button7X = width * 0/9; 
  button7Y = height * 4.2/9; 
  button7Width = width * 1/4 * 1/4;
  button7Height = height * 1/4 * 1/4;
  //
  button8X = width * 8.5/9; 
  button8Y = height * 4.2/9; 
  button8Width = width * 1/4 * 1/4;
  button8Height = height * 1/4 * 1/4;
  //
  button9X = width*4/9; 
  button9Y = height*4/9; 
  button9Width = width*1/3 * 1/3;
  button9Height = height*1/3 * 1/3;
}

void draw() {
  fill(Dash);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  fill(white);
  if (turnOnScarlet == true ) {
    fill(Scarlet);
  }
  if (turnOnBee == true) {
    fill(Bee);
  }
  if (turnOnSky == true) {
    fill(Sky);
  }
  if (turnOnMarsh == true) {
    fill(Marsh);
  }
  if (turnOnTiger == true) {
    fill(Tiger);
  }
  if (turnOnViolet == true) {
    fill(Violet);
  }
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  fill(Dash);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  //Button rectangles
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(red);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(deepRed);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  //
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(Yellow);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(DeepYellow);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  //
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(Blue);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(DeepBlue);
    rect(button3X, button3Y, button3Width, button3Height);  
  }
  //
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(Green);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(DeepGreen);
    rect(button4X, button4Y, button4Width, button4Height);  
  }
  //
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(Orange);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(DeepOrange);
    rect(button5X, button5Y, button5Width, button5Height);  
  }
  //
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    fill(Purple);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(DeepPurple);
    rect(button6X, button6Y, button6Width, button6Height);  
  }
  //
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(lightGray);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(Gray);
    rect(button7X, button7Y, button7Width, button7Height);  
  }
  //
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(lightGray);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(Gray);
    rect(button8X, button8Y, button8Width, button8Height);  
  }
  //
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(lightGray);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(Gray);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  //
  fill(white);
  //
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(white);
  //
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  //
  fill(white);
}
//
void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnScarlet = true;
  }
  //
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    println("Btn 2 activated");
    turnOnBee = true;
  }
  //
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    println("Btn 3 activated");
    turnOnSky = true;
  }
  //
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    println("Btn 4 activated");
    turnOnMarsh = true;
  }
  //
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    println("Btn 5 activated");
    turnOnTiger = true;
  }
  //
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    println("Btn 6 activated");
    turnOnViolet = true;
  }
  //
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(lightGray);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(Gray);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  //
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    println("Btn 9 activated");
    turnOnScarlet = false;
    turnOnBee = false;
    turnOnSky = false;
    turnOnMarsh = false;
    turnOnTiger = false;
    turnOnViolet = false;
  }
}
