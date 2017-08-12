// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: IND

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

_exe = player createDiaryRecord ["diary", ["Mission Briefing","
<br/>
<font size='18'>OBJECTIVE</font>
<br/>
*** Insert objective(s) of the mission***
<br/><br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
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
<br/><br/>
<font size='18'>TIME OF DAY</font>
<br/>
*** Dusk, Dawn, Mid-day, etc... ***
<br/><br/>
Mission by: *** Insert mission credits here. ***
<br/>
Made with Coalition Mission Framework (CMF) 3.8
"]];

// ====================================================================================