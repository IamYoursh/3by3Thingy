
//Global Variables
color circlegreen = #418345, white=255, black=0, red=#FF0000, deepRed=#B20000, Scarlet=#E01B1B, Green=#08FF1A, DeepGreen=#00B70D, Marsh=#17E526, Blue=#009FFF, DeepBlue=#007FCB, Sky=#55BFFF, lightGray=#B4B4B4, Gray=#8E8E8E, Clear=#FFFFFF;
Boolean turnOnScarlet=false, turnOnMarsh=false, turnOnSky=false, turnOnClear=false;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button9X, button9Y, button9Width, button9Height;


void setup() {
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
  button1X = width * 1/3 * 1/3; //Section 1, subsection 1
  button1Y = height * 1/3 * 1/3; //Section 1, subsection 1
  button1Width = width * 1/3 * 1/3;
  button1Height = height * 1/3 * 1/3;
  //
  button2X = width * 4/9 ; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  button2Y = height * 1/9 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  button2Width = width * 1/3 * 1/3;
  button2Height = height * 1/3 * 1/3;
  //
  button3X = width * 7/9; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  button3Y = height * 1/9; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  button3Width = width * 1/3 * 1/3;
  button3Height = height * 1/3 * 1/3;
  //
  button9X = width*4/9; 
  button9Y = height*4/9; 
  button9Width = width*1/3 * 1/3;
  button9Height = height*1/3 * 1/3;
}

void draw() {
  //fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //
  if (turnOnScarlet == true ) {
    fill(Scarlet);
  }
  if (turnOnMarsh == true) {
    fill(Marsh);
  }
  if (turnOnSky == true) {
    fill(Sky);
  }
  if (turnOnClear == true) {
    fill(white);
  }
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
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
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(Green);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(DeepGreen);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(Blue);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(DeepBlue);
    rect(button3X, button3Y, button3Width, button3Height);  
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(lightGray);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(Gray);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  
  fill(white);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(white);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnScarlet = true;
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    println("Btn 2 activated");
    turnOnMarsh = true;
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    println("Btn 3 activated");
    turnOnSky = true;
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(lightGray);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(Gray);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    println("Btn 9 activated");
    turnOnScarlet = false;
    turnOnMarsh = false;
    turnOnSky = false;
  }
}
