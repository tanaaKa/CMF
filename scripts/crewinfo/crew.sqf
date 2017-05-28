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
                   _name = format ["%1 %2 <img size='0.8' image='a3\ui_f\data\IGUI\Cfg\Actions\getindriver_ca.paa'/><br/>",_name,(name _x)];
               }

               else
               {
                   _name = format ["%1 %2 <img size='0.8' image='a3\ui_f\data\IGUI\Cfg\Actions\getingunner_ca.paa'/><br/>",_name, (name _x)];
               };

           }
           else
           {
               _name = format ["%1 %2 <img size='0.8' image='a3\ui_f\data\IGUI\Cfg\Actions\getincargo_ca.paa'/><br/>",_name, (name _x)];
           };  

       } forEach crew _vehicle;

       hintsilent parsetext  _name;

   	};
};   