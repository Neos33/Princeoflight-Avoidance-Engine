///scrMake3DCircleExt(x,y,radius,angle,dAngle,numBullets,tag);
//TODO: add a demonstration of how the Euler angles (angle, theta, phi) work, 
//either through a room or through an external image

var spawnX = argument[0];
var spawnY = argument[1];
var spawnRadius = argument[2];
var spawnAngle = argument[3];
var spawnDAngle = argument[4];
var spawnTheta = argument[5];
var spawnDTheta = argument[6];
var spawnPhi = argument[7];
var spawnDPhi = argument[8];
var spawnNum = argument[9];
var spawnTag = argument[10];



var obj=instance_create(spawnX,spawnY,objAvoidance3DCircle);

obj.numBullets = spawnNum;
obj.image_xscale = spawnRadius;
obj.angle = spawnAngle;
obj.dAngle = spawnDAngle;
obj.tag = spawnTag;
obj.theta=spawnTheta;
obj.dTheta=spawnDTheta;
obj.phi=spawnPhi;
obj.dPhi=spawnDPhi;


