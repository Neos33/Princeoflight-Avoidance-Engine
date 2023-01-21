<<<<<<<< HEAD:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/scrUsesTrigger.gml
/// scrUsesTrigger(script);
========
///trigger_used(script)
>>>>>>>> upstream/main:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/trigger_used.gml
//Called from objTriggerManager, returns true if a trigger script is used by the trigger.

return (ds_list_find_index(doTriggers, argument0) != -1);
