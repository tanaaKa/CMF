  while {true} do  {

   if(player != vehicle player) then
   {
       _name = "";
       _vehicle = assignedVehicle player;

       {
           if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
           {
               if(driver _vehicle == _x) then
               {
                   _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
               }

               else
               {
                   _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
               };

           }
           else
           {
               _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
           };  

       } forEach crew _vehicle;


         titleText [ Format ["%1 %2 %3 %4 %5",_name], "PLAIN DOWN", 0.1];

   	};
 }; 