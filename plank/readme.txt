[Required For Plank]

add:
#include "plank\plank.h"
to the description.ext of the mission.

add:
call compile preprocessFileLineNumbers "plank\plank_init.sqf";
to the init.sqf of the mission.

[Optionals]

To use an object as a mobile plank dispenser place a vehicle (or box) and give it the variable name:
supplytruck1

To add another supply truck add the variable name of it to the list in plank_supplytruck.sqf.

To change what objects are given edit arma3_fortifications.sqf, be sure to change the names in plank_supplytruck.sqf and plank_unload.sqf as well.

To have custom presets pulling multiple plank objects out at a time follow the commented out _____ example in plank_supplytruck.sqf and plank_unload.sqf, there can be any number of presets added.