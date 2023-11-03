/// instance_change_angle( targetId, targetAngle, duration, easingFunc = tween_linear )
/** 
    * Change the angle of an instance over time.
    * 
    * New instance commands override existing ones.
    * @param {instanceID} targetId - The instance to change the angle of.
    * @param {float} targetAngle - The final value to change the angle to.
    * @param {integer} duration - The duration of the change, in frames.
    * @param {easingFuncID} [easingFunc] - The easing function to use. The default is tween_linear.
    * 
*/

var targetId = argument[0];
var targetAngle = argument[1];
var duration = argument[2];

var easingFunc = tween_linear;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oRdrChangeAngleCommand );
    command.TargetId = id;
    command.StartAngle = image_angle;
    command.DeltaAngle = angle_difference(targetAngle,image_angle);
    command.Step = 0;
    command.Duration = max( duration, 1 );
    command.Smoother = easingFunc;
    self.Internal_AngleChangeCommand = command;
}
