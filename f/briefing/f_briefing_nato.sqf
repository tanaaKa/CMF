// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================
// Radio Structure
// This shows our radio structure. Do not change it.

_rad = player createDiaryRecord ["diary", ["Radio Structure","
<br/>
<font size='16'>PRC 343's (Short Range)</font>
<br/>
CH1 - Alpha <br />
CH2 - Bravo <br />
CH3 - Charlie <br />
CH4 - Platoon <br />
CH5 - Ground Supports (MMG, MAT, etc..) <br />
CH6 - Inter-Air <br />
CH7 - Inter-Armor <br />
<br/><br/>
<font size='16'>PRC 152's (Long Range)</font>
<br/>
CH1 - Air Net <br />
CH2 - Armor Net <br />
CH3 - Emergency Net <br />
CH4 - Platoon Net <br />

"]];

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Mission by: *** Insert mission credits here. ***
<br/><br/>
Made with Coalition Mission Framework (CMF)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Overview","
<br/>
<font size='18'>OBJECTIVE</font>
<br/>
*** Insert objective(s) of the mission***
<br/><br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
<font size='18'>ENEMY FORCES</font>
<br/>
*** Insert information about enemy forces here.***
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
*** Insert information about friendly forces here.***
<br/><br/>
<font size='18'>FIRE SUPPORT</font>
<br/>
*** Insert fire support options here. ***
<br/><br/>
<font size='18'>ROE STATUS</font>
<br/>
*** Green (do not fire), Amber (Fire if fired upon), Red (Fire at will) ***
<br/>
"]];

// ====================================================================================