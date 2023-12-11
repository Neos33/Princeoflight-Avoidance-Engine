///shaper_circle(theta,n)

///Shaper scripts return a pair of values corresponding to the polar position of a point on a parametric curve
///theta goes from 0 to 1
var theta = argument0;
var n = argument1;

var X=0,Y=0;
var newTheta=360*theta;
var _sqrt2 = 1.41421356237
var _denominator = 1/(1+sqr(dsin(360*theta)));
X = _sqrt2*dcos(360*theta)*_denominator;
Y = _sqrt2*dcos(360*theta)*dsin(360*theta)*_denominator;

///Convert to polar

var R = point_distance(0,0,X,Y);
var THETA = point_direction(0,0,X,Y);


///Pack the values into an array and return them
var a;
a[0]=0;
a[1]=0;

a[@0]=R;
a[@1]=THETA;
return a;


