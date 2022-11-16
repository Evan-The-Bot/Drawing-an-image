int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
PImage pic;
Boolean nightMode=false;
int tintDayMode=64, tintDayModeOpacity=0, tintRed=64, tintGreen=64, tintBlue=64, tintNightModeOpacity=0;
Float topHalfX, topHalfY ,topHalfWidth, topHalfHeight, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
//
void setup()
{
  size(768, 1020);
  appWidth = width;
  appHeight = height;
  //
  int picWidth = 768;
  int picHeight = 1020;
  int pic2Width = ;
  int pic2Height = ;
  int pic3Height = ;
  int pic3Width = ;
  //
  float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
  Boolean widthLarger=false, heightLarger=false;
  if ( picWidth >= picHeight ) {
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else {
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth; 
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      //
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
      if ( appHeight < picHeightAdjusted ) {
        println("STOP: you have violated the geometry");
        exit(); 
      }
    } else {
      println("CANVAS is smaller than Image");
     } 
  } else {
    println("CANVAS is smaller than Image");
  }
    
  //
  //Population
  pic = loadImage("../Images/PXL_20220815_182722808.jpg");
  backgroundImageX = appWidth * 0;
  backgroundImageY = appHeight * 0;
  backgroundImageWidth = appWidth -1 ;
  backgroundImageHeight = appHeight -1 ;
  topHalfX = appWidth * 1/2;
  topHalfY = appHeight * 1/2;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight * 1/2;
  bottomHalfX = appWidth * 1/2;
  bottomHalfY = appHeight * 1/2;
  bottomHalfWidth = appWidth * 1/2;
  bottomHalfHeight = appHeight * 1/2;
  
  //
  rect(backgroundImageX,backgroundImageY,backgroundImageWidth,backgroundImageHeight);
  rect(topHalfX,topHalfY,topHalfWidth,topHalfHeight);
  rect (bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);
  //
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Image dimensions are:", picWidth, picHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); 
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
}
//
void draw() {
  image(topHalfX,topHalfY,topHalfWidth,topHalfHeight);
  image(bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);

}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //  
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40); 
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(0, 500, 0);
    image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  }
}
