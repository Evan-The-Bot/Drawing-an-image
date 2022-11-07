//globalVariables
int appWidth, appHeight;
float imageBackgroundX,imageBackgroundY,imageBackgroundWidth,imageBackgroundHeight;
PImage pic ;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
Boolean nightMode=true;
size(1768,1020); 
//768,1020
appWidth = width;
appHeight = height;
//
int picHeight = height;
int picWidth = width;
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//

if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//Population
pic = loadImage("../Images/PXL_20220815_182722808.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
if (nightMode == false) tint (250,250,250);
if (nightMode == true) tint (0,250,50);
//
rect(imageBackgroundX,imageBackgroundY,imageBackgroundWidth,imageBackgroundHeight);
//tint(0,250,50);
image (pic,imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
