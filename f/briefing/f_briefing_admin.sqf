// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// ADD MISSION MAKER NOTES SECTIONS
// All text added below will only be visible to the current admin

_customText = "<br/>
<font size='18'>Enemy Spawn Locations</font>
<br/>
*** Put where you would like AI to spawn and how to act here ***"; 

// ====================================================================================

// ADMIN BRIEFING
// This is a generic section displayed only to the ADMIN

_briefing ="
<br/>
<font size='18'>ADMIN SECTION</font><br/>
This briefing section can only be seen by the current admin.
<br/><br/>
";

// ====================================================================================

// MISSION-MAKER NOTES
// This section displays notes made by the mission-maker for the ADMIN

if (_customText != "") then {
	_briefing = _briefing + "<br/><font size='18'>MISSION-MAKER NOTES</font><br/>";
	_briefing = _briefing + _customText + "<br/><br/>";
};

// ====================================================================================

// CREATE DIARY ENTRY

player createDiaryRecord ["diary", ["F3 Admin Menu",_briefing]];

// ====================================================================================