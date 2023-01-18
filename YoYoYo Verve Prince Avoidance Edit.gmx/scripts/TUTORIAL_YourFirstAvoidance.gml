/**
    * **Welcome to Princeoflight Avoidance Engine!**
    * 
    * In this tutorial, we will be covering how to set up the engine and create your first avoidance. 
    * We will also be covering basic scripts and instance functionality you can use to design your attacks.
    * 
    * Let's get started!
    * 
    * **Step 1 - Import a еrack**
    * 
    * As the first step of making your avoidance, you should choose a music track. You can use {@link https://www.audacityteam.org/|Audacity} to cut the track as needed, as well as detect the BPM of the song.
    * Import the track into GMS as usual, or, alternatively, add it to Included Files and use ``scrLoadMusic`` to get the ID of the track, as follows:
    * 
    * ``` 
    * //the music file is located in IncludedFiles and named "Music/Avoidance.ogg";
    * //insert this code into the Create->"Set music used for the avoidance" event of objSampleAvoidance
    * musicID = scrLoadMusic("Avoidance");
    * ```
    * 
    * **Step 2 - Set up the room**
    * 
    * Next up, you should set up the avoidance object itself and the avoidance room. Make a copy of *objSampleAvoidance*, located in the Objects/Avoidance Core folder, and give it a name, like *objMyAvoidance*.
    * 
    * Then, make a copy of one of the rooms in the *Rooms/Avoidance Templates* folder. In the top left corner, you should see an instance of the object *objSampleAvoidance*. Just replace it with your new avoidance object, like *objMyAvoidance*.
    * Additionally, there should be an instance of an object *objAvoidanceDrawController*. By default, it uses additive blending for all bullets - if you want to toggle it off, go to its Creation Code and write ``additive = false``.
    * 
    * **Step 3 - Set up the avoidance object**
    *
    * After you have placed your avoidance object in the room, you should set its basic variables.
    *
    * Set the music by going to the Create->"Set music used for the avoidance" event of your new object, and changing the value of the variable musicID. As well, set the BPM you've obtained before in the same section.
    * 
    * Then, set the room the player is going to be transported to after the avoidance is over. Go to the Create->"Set up end room and boss item" event to do so.
    *
    * **Step 4 - Set the attack timings**
    *
    * Attack timings are also defined in the Create event of the object, in the section "Set the attack timings". Inside, you should see something like this:
    * 
    * ```
    * avoidance_add_attack("ATTACK1",0);
    * avoidance_add_attack("ATTACK2",500);
    * avoidance_add_attack("ATTACK3",1000);
    * avoidance_add_attack("END",2000);
    * ```
    * 
    * The {@link avoidance_add_attack} scripts are used to define timings for your attacks, in order. You can add as many segments as you want, however, the final attack you and should always be named "END" - as that is what handles properly finishing the avoidance and warping the player to the end room.
    * The names of the segments will then be used in the Step event to determine which block of code corresponds to which attack.
    *     
    * **Step 5 - Code the attacks**
    * 
    * Finally, we can start making the attacks themselves! To do this, go to Step->"Attacks" event of your avoidance object. You will see a switch statement that looks something like this:
    *
    * ```
    * switch(attackNames[|attack]){ //Main attack loop
    *   case "ATTACK1":
    *   {   
    *       //code for the attack named "ATTACK1;
    *       break;
    *   }
    *   case "ATTACK2":
    *   {   
    *       //code for attack named "ATTACK2;
    *       break;
    *   }
    *   ...
    * ```
    *
    * 
*/
