/// scrMakeTrigger([trg]);
/**
    * Use this to make any object triggerable. Check individual trigger scripts for documentation.
    * 
    * @param {integer} [trg] - The index of the trigger to be created.
    * 
    * @example
    * //The following code creates a trigger with index 1, which makes the instance move horizontally upon activation.
    * with(scrMakeTrigger(1))
    * {
    *     trgMove(5, 0)
    * }
*/

var tInst = instance_create(x, y, objTriggerManager)
with(tInst)
{
    inst = other;
    if (argument_count >= 1)
    {
        trg = argument[0];
    }
}
if (!variable_instance_exists(id, "_currentTrigger"))
{
    _currentTrigger = noone;
}
global.makingTrigger = true;
return tInst;
