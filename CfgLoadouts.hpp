class CfgLoadouts {
  // Use POTATO to run gear assignment
  usePotato = 1;

  // Fast, Easy Settings to change loadouts without touching the arrays.  For TVT Balancing.
  // Allow Zoomed Optics (1 is true, 0 is false) <Anything like a HAMR (4x) optic won't be added, "red dot" would be fine>
  allowMagnifiedOptics = 0;

  // Allow changeable optics on a global level, note: optic options obey allowMagnifiedOptics rules
  allowChangeableOptics = 1;

  // Do Vehicle Loadouts
  // (1 will run normaly, 0 will leave them to vanilla defaults, -1 will clear and leave empty)
  setVehicleLoadouts = 1;

  // Fallback: use a basic soldiers loadout when the unit's classname isn't found (for Alive spawning random units)
  useFallback = 1;

  // prefixes to strip from the units classnames
  prefixes[] = {"b_", "o_", "i_"};

  // Shared defines
  #include "f\loadouts\common.hpp" // DO NOT COMMENT OUT, WILL BREAK EVERYTHING

  // Available loadouts - More to come soon! Use the custom exporter in virtual arsenal and paste in the blanktemplate file to make your own.
  // For use with exporter - "f\loadouts\blankTemplate.hpp"
  // US Army - UCP "f\loadouts\us_army_ucp.hpp"
  // US Army - OCP "f\loadouts\us_army_ocp.hpp"
  // US Marines - Woodland "f\loadouts\us_marines_w.hpp"
  // US Marines - Desert "f\loadouts\us_marines_d.hpp"
  // RU MSV - EMR "f\loadouts\ru_msv_emr.hpp"
  // AUS Army - MC/Auspat "f\loadouts\aus_army_auspat.hpp"

  // Note: please delete any factions you're not using
  // (i.e. delete the OPF and CIV classes in a BLU vs IND fight)
  class blu_f { // BLU
    #include "f\loadouts\us_army_ocp.hpp"
  };

  class ind_f { // IND
    #include "f\loadouts\aus_army_auspat.hpp"
  };

  class opf_f { // OPF
    #include "f\loadouts\ru_msv_emr.hpp"
  }; 
  
  #include "f\loadouts\civilians.hpp" // Civilians (mainly for RP missions) 
};
