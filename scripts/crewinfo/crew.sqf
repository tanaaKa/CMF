while {true} do
{
  if !((vehicle player) isEqualTo player) then
  {
    _name = "";
    _vehicle = assignedVehicle player;

    /*
    _driver = driver _vehicle;
    _gunner = gunner _vehicle;
    */

    {
      /*
      if (_driver isEqualTo _x) then
      {
        _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
      }
      else
      {
        if (_gunner isEqualTo _x) then
        {
          _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
        }
        else
        {
          _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
        };
      };
      */
      _name = format ["%1 %2 %3 %4 %5",_name, (name _x)];
    } forEach crew _vehicle;


    titleText [ Format ["%1 %2 %3 %4 %5",_name], "PLAIN DOWN", 0.1];
  };
};
