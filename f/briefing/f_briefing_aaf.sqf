// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

// ====================================================================================
// Radio Structure
// This shows our radio structure. Do not change it.

_rad = player createDiaryRecord ["diary", ["Radio Structure","
<br/>
<font size='16'>PRC 343's (Short Range)</font>
<br/>
CH1 - Alpha 1 <br />
CH2 - Alpha 2  <br />
CH3 - Alpha 3 <br />
CH4 - Bravo 1 <br />
CH5 - Bravo 2 <br />
CH6 - Bravo 3<br />
CH7 - Charlie 1<br />
CH8 - Charlie 2<br />
CH9 - Charlie 3<br />
CH10 - Inter-Armor<br />
CH11 - Inter-Air<br />
CH12 - Inter-Platoon<br />
<br/><br/>
<font size='16'>PRC 152's (Long Range)</font>
<br/>
CH1 - Alpha Net<br />
CH2 - Bravo Net <br />
CH3 - Charlie Net <br />
CH4 - Platoon Net <br />
CH5 - Armor Net <br />
CH6 - Air Net <br />
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
Mission by: *** Insert mission credits here. ***
<br/>
Made with Coalition Mission Framework (CMF)
"]];

// ====================================================================================