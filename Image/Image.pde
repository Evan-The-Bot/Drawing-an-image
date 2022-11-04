//globalVariables
int appWidth, appHeight;
float imageBackgroundX,imageBackgroundY,imageBackgroundWidth,imageBackgroundHeight;
PImage pic ;
size(768,1020); 

appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../Images/PXL_20220815_182722808.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
rect(imageBackgroundX,imageBackgroundY,imageBackgroundWidth,imageBackgroundHeight);

//Image(pic,imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
